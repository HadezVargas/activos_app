import 'package:isar/isar.dart';

part 'activo.g.dart';

@collection
class Activo {
  Id           isarId;
  final int          criticisms;
  final String       numberActiveMaximo;
  final String       numberJDE;
  final String       description1;
  final String       description2;
  final String       description3;
  final String       tAG;
  final String       location;
  final String       descriptionLocation;
  final String       subRegionCommuneCorregimiento;
  final String       installation;
  final String       father;
  final String       state;
  final String       iPSIGMA;
  final String       series;
  final String       criticalityDescription;
  final String       operationalNumber;
  final String       classification;
  final String       addressInternalLocation;
  final String       plant;
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
