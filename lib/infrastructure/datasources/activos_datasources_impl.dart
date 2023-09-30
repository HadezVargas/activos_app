

import 'package:activos_app/domain/domain.dart';

class ActivosDatasourcesImpl extends ActivosDatasource {
  @override
  Future<int> createUpdateActivo(Activo activo) {
    throw UnimplementedError();
  }

  @override
  Future<Activo> deleteActivoById(int id) {
    throw UnimplementedError();
  }

  @override
  Future<Activo> getActivoById(String id) {
    throw UnimplementedError();
  }

  @override
  Future<List<Activo>> getActivos({int limit = 10, int offset = 0}) {
    throw UnimplementedError();
  }
  
  @override
  Future<void> deleteAll() {
    throw UnimplementedError();
  }
}