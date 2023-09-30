import 'package:activos_app/domain/entities/activo.dart';

abstract class ActivosRepository {
  Future<Activo?> getActivoById(String id);
  Future<void> deleteActivoById(int id);
  Future<void> deleteAll();
  Future<List<Activo>> getActivos({int limit = 10, int offset = 0});
  Future<int> createUpdateActivo(Activo activoLike);
}
