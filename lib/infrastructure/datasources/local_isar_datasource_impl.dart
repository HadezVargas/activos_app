import 'package:activos_app/domain/domain.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

class LocalIsarDatasourceImpl extends ActivosDatasource {
  late Future<Isar> db;
  LocalIsarDatasourceImpl() {
    db = openDB();
  }

  Future<Isar> openDB() async {
    final dir = await getApplicationDocumentsDirectory();
    if (Isar.instanceNames.isEmpty) {
      return await Isar.open([ActivoSchema],
          directory: dir.path, inspector: true);
    }
    return Future.value(Isar.getInstance());
  }

  @override
  Future<int> createUpdateActivo(Activo activo) async {
    final isar = await db;
    try {
      final isarId = isar.writeTxnSync(() => isar.activos.putSync(activo));
      return isarId;
    } catch (e) {
      throw Exception();
    }
  }

  @override
  Future<void> deleteActivoById(int id) async {
    final isar = await db;
    isar.writeTxnSync(() => isar.activos.deleteSync(id));
  }

  @override
  Future<Activo?> getActivoById(String id) async {
    final isar = await db;
    return await isar.activos.filter().isarIdEqualTo(int.parse(id)).findFirst();
  }

  @override
  Future<List<Activo>> getActivos({int limit = 10, int offset = 0}) async {
    final isar = await db;
    return isar.activos.where().offset(offset).limit(limit).findAll();
  }

  @override
  Future<void> deleteAll() async {
    final isar = await db;
    isar.activos.where().deleteAll();
  }
}
