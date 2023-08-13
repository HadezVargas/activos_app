import 'package:activos_app/domain/domain.dart';

class ActivosRepositoryImpl extends ActivosRepository {
  final ActivosDatasource datasource;

  ActivosRepositoryImpl(this.datasource);

  @override
  Future<Activo> createUpdateActivo(Map<String, dynamic> activoLike) {
    return datasource.createUpdateActivo(activoLike);
  }

  @override
  Future<Activo> deleteActivoById(String id) {
    return datasource.deleteActivoById(id);
  }

  @override
  Future<Activo> getActivoById(String id) {
    return datasource.getActivoById(id);
  }

  @override
  Future<List<Activo>> getActivos() {
    return datasource.getActivos();
  }
}
