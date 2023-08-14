

import '../../domain/domain.dart';

class ActivoMapper {
  static fromJson(Map<String, dynamic> json) => Activo(
        id: json["id"],
        serial: json["serial"],
        tag: json["tag"],
        isActive: json["isActive"],
        images: List<String>.from(json["images"].map((x) => x)),
        description: List<String>.from(json["description"].map((x) => x)),
      );

  
}