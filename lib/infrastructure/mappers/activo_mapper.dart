

import '../../domain/domain.dart';

class ActivoMapper {
  static fromJson(Map<String, dynamic> json) => Activo(
        criticisms: json["criticisms"],
        numberActiveMaximo: json["numberActiveMaximo"],
        numberJDE: json["numberJDE"],
        description: json["description"],
        tAG: json["tAG"],
        location: json["location"],
        descriptionLocation: json["descriptionLocation"],
        subRegionCommuneCorregimiento: json["subRegionCommuneCorregimiento"],
        installation: json["installation"],
        father: json["father"],
        state: json["state"],
        iPSIGMA: json["iPSIGMA"],
        series: json["series"],
        criticalityDescription: json["criticalityDescription"],
        operationalNumber: json["operationalNumber"],
        classification: json["classification"],
        addressInternalLocation: json["addressInternalLocation"],
        plant: json["plant"],
        images: List<String>.from(json["images"].map((x) => x)),
      );

  
}