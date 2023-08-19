

import '../../domain/domain.dart';

class ActivoMapper {
  static fromJson(Map<String, dynamic> json) => Activo(
        serial: json["serial"],
        tag: json["tag"],
        title: json["title"],
        brand: json["brand"],
        isActive: json["isActive"],
        images: List<String>.from(json["images"].map((x) => x)),
        description: List<String>.from(json["description"].map((x) => x)),
      );

  
}