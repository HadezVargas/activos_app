import 'package:activos_app/domain/domain.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ActivoFormNotifier extends StateNotifier<ActivoFormState> {
  ActivoFormNotifier({
    this.onSubmitCallback,
    required Activo activo,
  }) : super(ActivoFormState(
          id: activo.id,
          serial: activo.serial,
          tag: activo.tag,
          title: activo.title,
          brand: activo.brand,
          isActive: activo.isActive,
          images: activo.images,
          description: activo.description,
        ));

  void onSerialChanged(String value)            => state = state.copyWith(serial: value);
  void onTagChanged(String tag)               => state = state.copyWith(tag: tag);
  void onTitleChanged(String title)             => state = state.copyWith(title: title);
  void onBrandChanged(String brand)             => state = state.copyWith(brand: brand);
  void onImagesChanged(List<String> images)      => state = state.copyWith(images: images);//TODO cambiar metodo para agregar a un listado
  void onDescriptionChanged(List<String> description) => state = state.copyWith(description: description); //TODO cambiar metodo para agregar a un listado
  

  final void Function(Map<String, dynamic> activoLike)? onSubmitCallback;
}

class ActivoFormState {
  final String id;
  final String serial;
  final String tag;
  final String title;
  final String brand;
  final bool isActive;
  final List<String> images;
  final List<String> description;

  ActivoFormState(
      {this.id = 'Sin id',
      this.serial = 'Sin serial',
      this.tag = 'Sin etiqueta',
      this.title = 'Sin titulo',
      this.brand = 'Sin marca',
      this.isActive = true,
      this.images = const [],
      this.description = const []});

  ActivoFormState copyWith({
    String? id,
    String? serial,
    String? tag,
    String? title,
    String? brand,
    bool? isActive,
    List<String>? images,
    List<String>? description,
  }) {
    return ActivoFormState(
      id: id ?? this.id,
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
