import 'package:isar/isar.dart';

part 'activo.g.dart';

@collection
class Activo {
  Id           isarId;
  final int          criticisms;
  final String       numberActiveMaximo;//listo
  final String       numberJDE;//listo
  final String       description1;//listo
  final String       description2;// listo
  final String       description3;//listo
  final String       tAG;//listo
  final String       location;//listo
  final String       descriptionLocation;//
  final String       subRegionCommuneCorregimiento;//listo
  final String       installation;//listo
  final String       father;//listo
  final String       state;//listo
  final String       iPSIGMA;//listo
  final String       series;//listo
  final String       criticalityDescription;//listo
  final String       operationalNumber;//listo
  final String       classification;//listo
  final String       addressInternalLocation;//listo
  final String       plant;//listo
  final List<String> images;

  Activo({
    this.isarId = Isar.autoIncrement,
    required this.criticisms,
    required this.numberActiveMaximo,
    required this.numberJDE,
    required this.description1,
    required this.description2,
    required this.description3,
    required this.tAG,
    required this.location,
    required this.descriptionLocation,
    required this.subRegionCommuneCorregimiento,
    required this.installation,
    required this.father,
    required this.state,
    required this.iPSIGMA,
    required this.series,
    required this.criticalityDescription,
    required this.operationalNumber,
    required this.classification,
    required this.addressInternalLocation,
    required this.plant,
    required this.images,
  });
}
