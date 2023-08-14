
import 'package:isar/isar.dart';

part 'activo.g.dart';

@collection
class Activo {
  Id isarId = Isar.autoIncrement;
  final String id;
  final String serial;
  final String tag;
  final bool isActive;
  final List<String> images;
  final List<String> description;

  Activo({
    required this.id,
    required this.serial,
    required this.tag,
    required this.isActive,
    required this.images,
    required this.description,
  });

  
}
