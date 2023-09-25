import 'dart:io';

import 'package:open_filex/open_filex.dart';
import 'package:path_provider/path_provider.dart';
import 'package:syncfusion_flutter_xlsio/xlsio.dart';

import '../../domain/domain.dart';

class ExcelGeneratorServiceSyncfusionImpl extends ExcelGeneratorService {
  @override
  Future<void> generateExcelFile(List<Activo> activos) async {
    final Workbook workbook = Workbook();
    final Worksheet sheet = workbook.worksheets[0];

    final Style style = workbook.styles.add('generalStyle');
    style.borders.all.lineStyle = LineStyle.thin;

    final hedersLabels = [
      'numberJDE',
      'numberActiveMaximo',
      'tAG',
      'Numero de serie',
      'description1',
      'description2',
      'description3',
      'plant',
      'criticalityDescription',
      'location',
      'descriptionLocation',
      'subRegionCommuneCorregimiento',
      'installation',
      'father',
      'state',
      'iPSIGMA',
      'operationalNumber',
      'classification',
      'addressInternalLocation',
      'criticisms',
      'images',
    ];

    for (var i = 0; i < hedersLabels.length; i++) {
      sheet.getRangeByIndex(1, i + 1).setText(hedersLabels[i]);
      final Range titulos = sheet.getRangeByIndex(1, i + 1);
      final Style style = titulos.cellStyle;
      style.bold = true;
    }

    int rowIndex = 2;
    int columnIndex = 22;
    int pictureIndex = 0;
    for (var activo in activos) {
      sheet.getRangeByIndex(rowIndex, 1).setText(activo.numberJDE);
      sheet.getRangeByIndex(rowIndex, 2).setText(activo.numberActiveMaximo);
      sheet.getRangeByIndex(rowIndex, 3).setText(activo.tAG);
      sheet.getRangeByIndex(rowIndex, 4).setText(activo.series);
      sheet.getRangeByIndex(rowIndex, 5).setText(activo.description1);
      sheet.getRangeByIndex(rowIndex, 6).setText(activo.description2);
      sheet.getRangeByIndex(rowIndex, 7).setText(activo.description3);
      sheet.getRangeByIndex(rowIndex, 8).setText(activo.plant);
      sheet
          .getRangeByIndex(rowIndex, 9)
          .setText(activo.criticalityDescription);
      sheet.getRangeByIndex(rowIndex, 10).setText(activo.location);
      sheet.getRangeByIndex(rowIndex, 11).setText(activo.descriptionLocation);
      sheet.getRangeByIndex(rowIndex, 12).setText(activo.subRegionCommuneCorregimiento);
      sheet.getRangeByIndex(rowIndex, 13).setText(activo.installation);
      sheet.getRangeByIndex(rowIndex, 14).setText(activo.series);
      sheet.getRangeByIndex(rowIndex, 15).setText(activo.father);
      sheet
          .getRangeByIndex(rowIndex, 16)
          .setText(activo.state);
      sheet.getRangeByIndex(rowIndex, 17).setText(activo.iPSIGMA);
      sheet.getRangeByIndex(rowIndex, 18).setText(activo.operationalNumber);
      sheet
          .getRangeByIndex(rowIndex, 19)
          .setText(activo.classification);
      sheet.getRangeByIndex(rowIndex, 20).setText(activo.addressInternalLocation);
      sheet.getRangeByIndex(rowIndex, 21).setText(activo.operationalNumber);
      // sheet.getRangeByIndex(rowIndex, 19).setText(activo.images.join(', '));
      for (var image in activo.images) {
        final List<int> bytes = await File(image).readAsBytes();
        sheet.pictures.addStream(rowIndex, columnIndex, bytes);
        final Picture picture = sheet.pictures[pictureIndex];
        picture.height = 100;
        picture.width = 100;
        picture.row = rowIndex;
        // picture.lastRow = rowIndex;
        picture.column = columnIndex;
        // picture.lastColumn = columnIndex;
        columnIndex++;
        pictureIndex++;
      }
      rowIndex++;
      final Range range = sheet.getRangeByIndex(rowIndex, columnIndex);
      range.autoFit();
      // range.columnWidth = 14;
      // range.rowHeight = 88;
      columnIndex = 22;
    }

    final List<int> bytes = workbook.saveAsStream();
    workbook.dispose();

    final directory = (await getApplicationDocumentsDirectory()).path;
    final path = '$directory/activos.xlsx';
    final file = File(path);
    await file.writeAsBytes(bytes, flush: true);
    OpenFilex.open(path);
  }
}
