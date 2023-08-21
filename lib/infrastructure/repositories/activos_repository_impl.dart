import 'package:activos_app/domain/domain.dart';

class ActivosRepositoryImpl extends ActivosRepository {
  final ActivosDatasource datasource;

  ActivosRepositoryImpl(this.datasource);

  @override
  Future<void> createUpdateActivo(Activo activoLike) {
    return datasource.createUpdateActivo(activoLike);
  }

  @override
  Future<void> deleteActivoById(int id) {
    return datasource.deleteActivoById(id);
  }

  @override
  Future<Activo?> getActivoById(String id) {
    return datasource.getActivoById(id);
  }

  @override
  Future<List<Activo>> getActivos({int limit = 10, int offset = 0}) {
    return datasource.getActivos(limit: limit, offset: offset);
  }
}
