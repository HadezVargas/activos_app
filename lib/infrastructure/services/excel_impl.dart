import 'dart:io';

import 'package:activos_app/domain/domain.dart';
import 'package:excel/excel.dart';
import 'package:open_filex/open_filex.dart';
import 'package:path_provider/path_provider.dart';

class ExcelImpl extends ExcelGeneratorService {
  @override
  Future<void> generateExcelFile(List<Activo> activos) async {
    final excel = Excel.createExcel();
    final sheet = excel['Sheet1'];

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

    sheet.appendRow(hedersLabels);
    for (final activo in activos) {
      final rowData = [
        activo.numberJDE,
        activo.numberActiveMaximo,
        activo.tAG,
        activo.series,
        activo.description1,
        activo.description2,
        activo.description3,
        activo.plant,
        activo.criticalityDescription,
        activo.location,
        activo.descriptionLocation,
        activo.subRegionCommuneCorregimiento,
        activo.installation,
        activo.father,
        activo.state,
        activo.iPSIGMA,
        activo.operationalNumber,
        activo.classification,
        activo.addressInternalLocation,
        activo.criticisms,
        activo.images.join('\n')
      ];
      sheet.appendRow(rowData);
    }
    final documentsDirectory = await getApplicationDocumentsDirectory();
    final excelFilePath = '${documentsDirectory.path}/activos.xlsx';

    final fileBytes = excel.encode();
    File(excelFilePath).writeAsBytesSync(fileBytes!);
    OpenFilex.open(excelFilePath);
  }
}
