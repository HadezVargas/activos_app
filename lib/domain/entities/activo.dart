import 'package:isar/isar.dart';

part 'activo.g.dart';

@collection
class Activo {
  12final Id isarId;
  final String serial;
  final String tag;
  final String title;
  final String brand;
  final bool isActive;
  final List<String> images;
  final List<String> description;

  Activo({
    this.isarId = Isar.autoIncrement,
    required this.serial,
    required this.tag,
    required this.title,
    required this.brand,
    this.isActive = true,
    required this.images,
    required this.description,
  });
}
