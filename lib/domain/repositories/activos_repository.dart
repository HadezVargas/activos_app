import 'package:activos_app/domain/entities/activos.dart';

abstract class ActivosRepository {
  Future<Activo> getActivoById(String id);
  Future<Activo> deleteActivoById(String id);
  Future<List<Activo>> getActivos();
  Future<Activo> createUpdateActivo(Map<String, dynamic> activoLike);
}
