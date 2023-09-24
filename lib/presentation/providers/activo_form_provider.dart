import 'dart:io';

import 'package:activos_app/domain/domain.dart';
import 'package:activos_app/presentation/providers/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

final activoFormProvider = StateNotifierProvider.autoDispose
    .family<ActivoFormNotifier, ActivoFormState, Activo>((ref, activo) {
  final createUpdateCallbak =
      ref.watch(activosProvider.notifier).createOrUpdateActive;
  return ActivoFormNotifier(
      activo: activo, onSubmitCallback: createUpdateCallbak);
});

class ActivoFormNotifier extends StateNotifier<ActivoFormState> {
  ActivoFormNotifier({
    required this.onSubmitCallback,
    required Activo activo,
  }) : super(ActivoFormState(
          isarId: activo.isarId,
          criticisms: activo.criticisms,
          numberActiveMaximo: activo.numberActiveMaximo,
          numberJDE: activo.numberJDE,
          description1: activo.description1,
          description2: activo.description2,
          description3: activo.description3,
          tAG: activo.tAG,
          location: activo.location,
          descriptionLocation: activo.descriptionLocation,
          subRegionCommuneCorregimiento: activo.subRegionCommuneCorregimiento,
          installation: activo.installation,
          father: activo.father,
          estado: activo.state,
          iPSIGMA: activo.iPSIGMA,
          series: activo.series,
          criticalityDescription: activo.criticalityDescription,
          operationalNumber: activo.operationalNumber,
          classification: activo.classification,
          addressInternalLocation: activo.addressInternalLocation,
          plant: activo.plant,
          images: activo.images,
        ));
  final Function(Activo activo) onSubmitCallback;

  void onCriticismsChanged(int criticisms) =>
      state = state.copyWith(criticisms: criticisms);
  void onNumberActiveMaximoChanged(String numberActiveMaximo) =>
      state = state.copyWith(numberActiveMaximo: numberActiveMaximo);
  void onNumberJDEChanged(String numberJDE) =>
      state = state.copyWith(numberJDE: numberJDE);
  void onDescription1Changed(String description) => state = state.copyWith(description1: description);
  void onDescription2Changed(String description) => state = state.copyWith(description2: description);
  void onDescription3Changed(String description) => state = state.copyWith(description3: description);
  void onTAGChanged(String tAG) => state = state.copyWith(tAG: tAG);
  void onLocationChanged(String location) =>
      state = state.copyWith(location: location);
  void onDescriptionLocationChanged(String descriptionLocation) =>
      state = state.copyWith(descriptionLocation: descriptionLocation);
  void onSubRegionCommuneCorregimientoChanged(
          String subRegionCommuneCorregimiento) =>
      state = state.copyWith(
          subRegionCommuneCorregimiento: subRegionCommuneCorregimiento);
  void onInstallationChanged(String installation) =>
      state = state.copyWith(installation: installation);
  void onFatherChanged(String father) => state = state.copyWith(father: father);
  void onEstadoChanged(String estado) => state = state.copyWith(estado: estado);
  void onIPSIGMAChanged(String iPSIGMA) =>
      state = state.copyWith(iPSIGMA: iPSIGMA);
  void onSeriesChanged(String series) => state = state.copyWith(series: series);
  void onCriticalityDescriptionChanged(String criticalityDescription) =>
      state = state.copyWith(criticalityDescription: criticalityDescription);
  void onOperationalNumberChanged(String operationalNumber) =>
      state = state.copyWith(operationalNumber: operationalNumber);
  void onClassificationChanged(String classification) =>
      state = state.copyWith(classification: classification);
  void onAddressInternalLocationChanged(String addressInternalLocation) =>
      state = state.copyWith(addressInternalLocation: addressInternalLocation);
  void onPlantChanged(String plant) => state = state.copyWith(plant: plant);
  void onImagesChanged(File photoPath) async {
    final appDir = await getApplicationDocumentsDirectory();
    final fileName = '${state.tAG}${state.numberOfImage}.jpg';
    state = state.copyWith(numberOfImage: state.numberOfImage + 1);
    final savedImage = await photoPath.copy('${appDir.path}/$fileName');
    state = state.copyWith(images: [...state.images, savedImage.path]);
  }

 

  Future<bool> onFormSubmit() async {
    final Activo activo = Activo(
      isarId: state.isarId,
      criticisms: state.criticisms,
      numberActiveMaximo: state.numberActiveMaximo,
      numberJDE: state.numberJDE,
      description1: state.description1,
      description2: state.description2,
      description3: state.description3,
      tAG: state.tAG,
      location: state.location,
      descriptionLocation: state.descriptionLocation,
      subRegionCommuneCorregimiento: state.subRegionCommuneCorregimiento,
      installation: state.installation,
      father: state.father,
      state: state.estado,
      iPSIGMA: state.iPSIGMA,
      series: state.series,
      criticalityDescription: state.criticalityDescription,
      operationalNumber: state.operationalNumber,
      classification: state.classification,
      addressInternalLocation: state.addressInternalLocation,
      plant: state.plant,
      images: state.images,
    );
    try {
      await onSubmitCallback(activo);
      return true;
    } catch (e) {
      return false;
    }
  }
}

class ActivoFormState {
  int isarId;
  final int numberOfImage;
  final int criticisms;
  final String numberActiveMaximo;
  final String numberJDE;
  final String description1;
  final String description2;
  final String description3;
  final String tAG;
  final String location;
  final String descriptionLocation;
  final String subRegionCommuneCorregimiento;
  final String installation;
  final String father;
  final String estado;
  final String iPSIGMA;
  final String series;
  final String criticalityDescription;
  final String operationalNumber;
  final String classification;
  final String addressInternalLocation;
  final String plant;
  final List<String> images;

  ActivoFormState({
    this.isarId = Isar.autoIncrement,
    this.numberOfImage = 0,
    this.criticisms = 4,
    this.numberActiveMaximo = 'sin dato',
    this.numberJDE = 'sin dato',
    this.description1 = 'sin dato',
    this.description2 = 'sin dato',
    this.description3 = 'sin dato',
    this.tAG = 'sin dato',
    this.location = 'sin dato',
    this.descriptionLocation = 'sin dato',
    this.subRegionCommuneCorregimiento = 'sin dato',
    this.installation = 'sin dato',
    this.father = 'sin dato',
    this.estado = 'sin dato',
    this.iPSIGMA = 'sin dato',
    this.series = 'sin dato',
    this.criticalityDescription = 'sin dato',
    this.operationalNumber = 'sin dato',
    this.classification = 'sin dato',
    this.addressInternalLocation = 'sin dato',
    this.plant = 'sin dato',
    this.images = const [],
  });

  ActivoFormState copyWith({
    int? isarId,
    int? numberOfImage,
    int? criticisms,
    String? numberActiveMaximo,
    String? numberJDE,
    String? description1,
    String? description2,
    String? description3,
    String? tAG,
    String? location,
    String? descriptionLocation,
    String? subRegionCommuneCorregimiento,
    String? installation,
    String? father,
    String? estado,
    String? iPSIGMA,
    String? series,
    String? criticalityDescription,
    String? operationalNumber,
    String? classification,
    String? addressInternalLocation,
    String? plant,
    List<String>? images,
  }) {
    return ActivoFormState(
      isarId: isarId ?? this.isarId,
      numberOfImage: numberOfImage ?? this.numberOfImage,
      criticisms: criticisms ?? this.criticisms,
      numberActiveMaximo: numberActiveMaximo ?? this.numberActiveMaximo,
      numberJDE: numberJDE ?? this.numberJDE,
      description1: description1 ?? this.description1,
      description2: description2 ?? this.description2,
      description3: description3 ?? this.description3,
      tAG: tAG ?? this.tAG,
      location: location ?? this.location,
      descriptionLocation: descriptionLocation ?? this.descriptionLocation,
      subRegionCommuneCorregimiento:
          subRegionCommuneCorregimiento ?? this.subRegionCommuneCorregimiento,
      installation: installation ?? this.installation,
      father: father ?? this.father,
      estado: estado ?? this.estado,
      iPSIGMA: iPSIGMA ?? this.iPSIGMA,
      series: series ?? this.series,
      criticalityDescription:
          criticalityDescription ?? this.criticalityDescription,
      operationalNumber: operationalNumber ?? this.operationalNumber,
      classification: classification ?? this.classification,
      addressInternalLocation:
          addressInternalLocation ?? this.addressInternalLocation,
      plant: plant ?? this.plant,
      images: images ?? this.images,
    );
  }
}
