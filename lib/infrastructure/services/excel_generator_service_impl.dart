

import 'dart:io';

import 'package:open_filex/open_filex.dart';
import 'package:path_provider/path_provider.dart';
import 'package:syncfusion_flutter_xlsio/xlsio.dart';

import '../../domain/domain.dart';

class ExcelGeneratorServiceImpl extends ExcelGeneratorService {
  @override
  Future<void> generateExcelFile(List<Activo> activos) async{
    final Workbook workbook = Workbook();
    final Worksheet sheet = workbook.worksheets[0];

    final hedersLabels = [
        'numberActiveMaximo',
        'numberJDE',
        'description',
        'tAG',
        'location',
        'descriptionLocation',
        'subRegionCommuneCorregimiento',
        'installation',
        'father',
        'state',
        'iPSIGMA',
        'series',
        'criticisms',
        'criticalityDescription',
        'operationalNumber',
        'classification',
        'addressInternalLocation',
        'plant',
        'images',
    ];

    for (var i = 0; i < hedersLabels.length; i++) {
      sheet.getRangeByIndex(1, i+1).setText(hedersLabels[i]);
    }

    int rowIndex = 2;
    for (var activo in activos) {
      sheet.getRangeByIndex(rowIndex, 1).setText(activo.numberActiveMaximo);
      sheet.getRangeByIndex(rowIndex, 2).setText(activo.numberJDE);
      sheet.getRangeByIndex(rowIndex, 3).setText(activo.description);
      sheet.getRangeByIndex(rowIndex, 4).setText(activo.tAG);
      sheet.getRangeByIndex(rowIndex, 5).setText(activo.location);
      sheet.getRangeByIndex(rowIndex, 6).setText(activo.descriptionLocation);
      sheet.getRangeByIndex(rowIndex, 7).setText(activo.subRegionCommuneCorregimiento);
      sheet.getRangeByIndex(rowIndex, 8).setText(activo.installation);
      sheet.getRangeByIndex(rowIndex, 9).setText(activo.father);
      sheet.getRangeByIndex(rowIndex, 10).setText(activo.state);
      sheet.getRangeByIndex(rowIndex, 11).setText(activo.iPSIGMA);
      sheet.getRangeByIndex(rowIndex, 12).setText(activo.series);
      sheet.getRangeByIndex(rowIndex, 13).setText(activo.criticisms.toString());
      sheet.getRangeByIndex(rowIndex, 14).setText(activo.criticalityDescription);
      sheet.getRangeByIndex(rowIndex, 15).setText(activo.operationalNumber);
      sheet.getRangeByIndex(rowIndex, 16).setText(activo.classification);
      sheet.getRangeByIndex(rowIndex, 17).setText(activo.addressInternalLocation);
      sheet.getRangeByIndex(rowIndex, 18).setText(activo.plant);
      sheet.getRangeByIndex(rowIndex, 19).setText(activo.images.join(', '));
      rowIndex++;
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