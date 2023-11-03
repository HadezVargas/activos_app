import 'dart:io';

import 'package:open_filex/open_filex.dart';
import 'package:path_provider/path_provider.dart';
import 'package:syncfusion_flutter_xlsio/xlsio.dart';

import '../../domain/domain.dart';

class ExcelGeneratorServiceSyncfusionImpl extends ExcelGeneratorService {
  final String plant;

  ExcelGeneratorServiceSyncfusionImpl({required this.plant});
  @override
  Future<void> generateExcelFile(List<Activo> activos) async {
    final Workbook workbook = Workbook();
    final Worksheet sheet = workbook.worksheets[0];

    final Style style = workbook.styles.add('generalStyle');
    style.borders.all.lineStyle = LineStyle.thin;

    final hedersLabels = [
      'Etiqueta',
      'Numero OW',
      'Numero de serie',
      'Description1',
      'Description2',
      'Description3',
      'Planta',
      'Localizacion',
      'Estado',
    ];

    for (var i = 0; i < hedersLabels.length; i++) {
      sheet.getRangeByIndex(1, i + 1).setText(hedersLabels[i]);
      final Range titulos = sheet.getRangeByIndex(1, i + 1);
      titulos.autoFit();
      final Style style = titulos.cellStyle;
      style.bold = true;
    }

    int rowIndex = 2;
    int columnIndex = 10;
    int pictureIndex = 0;
    for (final activo in activos) {
      sheet.getRangeByIndex(rowIndex, 1).setText(activo.tAG);
      sheet.getRangeByIndex(rowIndex, 2).setText(activo.numberJDE);
      sheet.getRangeByIndex(rowIndex, 3).setText(activo.series);
      sheet.getRangeByIndex(rowIndex, 4).setText(activo.description1);
      sheet.getRangeByIndex(rowIndex, 5).setText(activo.description2);
      sheet.getRangeByIndex(rowIndex, 6).setText(activo.description3);
      sheet.getRangeByIndex(rowIndex, 7).setText(plant);
      sheet.getRangeByIndex(rowIndex, 8).setText(activo.descriptionLocation);
      sheet.getRangeByIndex(rowIndex, 9).setText(activo.state);
      for (final image in activo.images) {
        final List<int> bytes = await File(image).readAsBytes();
        sheet.pictures.addStream(rowIndex, columnIndex, bytes);
        final Picture picture = sheet.pictures[pictureIndex];
        picture.height = 100;
        picture.width = 100;
        picture.row = rowIndex;
        picture.column = columnIndex;
        sheet.getRangeByIndex(rowIndex, columnIndex).columnWidth = 14.0;
        columnIndex++;
        pictureIndex++;
      }
      final Range range = sheet.getRangeByIndex(rowIndex, columnIndex);
      range.autoFit();
      range.rowHeight = 88;
      rowIndex++;
      columnIndex = 21;
    }

    final List<int> bytes = workbook.saveAsStream();
    workbook.dispose();

    final directory = (await getApplicationDocumentsDirectory()).path;
    final path = '$directory/{$plant}_activos.xlsx';
    final file = File(path);
    await file.writeAsBytes(bytes, flush: true);
    OpenFilex.open(path);
  }
}
