import 'package:activos_app/domain/domain.dart';
import 'package:activos_app/presentation/providers/activos_repository_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final activoFormProvider = StateNotifierProvider.autoDispose
    .family<ActivoFormNotifier, ActivoFormState, Activo>((ref, activo) {
  final createUpdateCallbak =
      ref.watch(activosRepositoryProvider).createUpdateActivo;
  return ActivoFormNotifier(
      activo: activo, onSubmitCallback: createUpdateCallbak);
});

class ActivoFormNotifier extends StateNotifier<ActivoFormState> {
  ActivoFormNotifier({
    required this.onSubmitCallback,
    required Activo activo,
  }) : super(ActivoFormState(
          isarId: activo.isarId,
          serial: activo.serial,
          tag: activo.tag,
          title: activo.title,
          brand: activo.brand,
          isActive: activo.isActive,
          images: activo.images,
          description: activo.description,
        ));
  final Function(Activo activo) onSubmitCallback;

  void onSerialChanged(String value) => state = state.copyWith(serial: value);
  void onTagChanged(String tag) => state = state.copyWith(tag: tag);
  void onTitleChanged(String title) => state = state.copyWith(title: title);
  void onBrandChanged(String brand) => state = state.copyWith(brand: brand);
  void onImagesChanged(List<String> images) => state = state.copyWith(
      images: images); //TODO cambiar metodo para agregar a un listado
  void onDescriptionChanged(List<String> description) {}

  Future<bool> onFormSubmit() async {
    final Activo activo = Activo(
        isarId: state.isarId,
        serial: state.serial,
        tag: state.tag,
        title: state.title,
        brand: state.brand,
        images: state.images,
        description: state.description);
    try {
      await onSubmitCallback(activo);
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }
}

class ActivoFormState {
  final int isarId;
  final String serial;
  final String tag;
  final String title;
  final String brand;
  final bool isActive;
  final List<String> images;
  final List<String> description;

  ActivoFormState(
      {
      this.isarId = -1,
      this.serial = 'Sin serial',
      this.tag = 'Sin etiqueta',
      this.title = 'Sin titulo',
      this.brand = 'Sin marca',
      this.isActive = true,
      this.images = const [],
      this.description = const []});

  ActivoFormState copyWith({
    int? isarId,
    String? serial,
    String? tag,
    String? title,
    String? brand,
    bool? isActive,
    List<String>? images,
    List<String>? description,
  }) {
    return ActivoFormState(
      isarId: isarId ?? this.isarId,
      serial: serial ?? this.serial,
      tag: tag ?? this.tag,
      title: title ?? this.title,
      brand: brand ?? this.brand,
      isActive: isActive ?? this.isActive,
      images: images ?? this.images,
      description: description ?? this.description,
    );
  }
}
