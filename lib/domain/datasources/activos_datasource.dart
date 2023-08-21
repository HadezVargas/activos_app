import 'package:activos_app/domain/entities/activo.dart';

abstract class ActivosDatasource {
  Future<Activo?> getActivoById(String id);
  Future<void> deleteActivoById(int id);
  Future<List<Activo>> getActivos({int limit = 10 , int offset = 0});
  Future<void> createUpdateActivo(Activo activo);
  

}
