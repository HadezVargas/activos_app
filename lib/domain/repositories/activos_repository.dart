import 'package:activos_app/domain/entities/activo.dart';

abstract class ActivosRepository {
  Future<Activo?> getActivoById(String id);
  Future<int> createUpdateActivo(Activo activoLike);
  Future<List<Activo>> getActivos({int limit = 10, int offset = 0});
  Future<List<Activo>> getAll();
  Future<void> deleteActivoById(int id);
  Future<void> deleteAll();
}
