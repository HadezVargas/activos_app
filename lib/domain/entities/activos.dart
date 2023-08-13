

class Activo {
  final String id;
  final String serial;
  final String tag;
  final bool isActive;
  final List<String>? images;
  final List<Map<String, String>> description;

  Activo({
    required this.id,
    required this.serial,
    required this.tag,
    required this.isActive,
    required this.images,
    required this.description,
  });

  
}
