

import '../domain.dart';

abstract class ExcelGeneratorService {
  Future<void> generateExcelFile(List<Activo> activos);
}