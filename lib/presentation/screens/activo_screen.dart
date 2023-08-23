import 'dart:io';

import 'package:activos_app/domain/domain.dart';
import 'package:activos_app/infrastructure/infrastructure.dart';
import 'package:activos_app/presentation/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widgets/widgets.dart';

class ActivoScreen extends ConsumerWidget {
  final String activoId;
  const ActivoScreen({super.key, required this.activoId});

  void showSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text('Activos actualizados')));
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activoState = ref.watch(activoProvider(activoId));
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Editar Activo $activoId'),
          actions: [
            IconButton(
                onPressed: () async {
                  final photoPath =
                      await CameraGalleryServiceImpl().takePhoto();
                  if (photoPath == null) return;
                  ref
                      .read(activoFormProvider(activoState.activo!).notifier)
                      .onImagesChanged(File(photoPath));
                },
                icon: const Icon(Icons.camera_alt_outlined))
          ],
        ),
        body: activoState.isLoading
            ? const FullLoader()
            : _ActivoView(activo: activoState.activo!),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (activoState.activo == null) return;
            ref
                .read(activoFormProvider(activoState.activo!).notifier)
                .onFormSubmit()
                .then((value) {
              if (!value) {
                return;
              }
              showSnackbar(context);
            });
          },
          child: const Icon(Icons.save_as_outlined),
        ),
      ),
    );
  }
}

class _ActivoView extends ConsumerWidget {
  final Activo activo;

  const _ActivoView({required this.activo});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textStyles = Theme.of(context).textTheme;
    final activoForm = ref.watch(activoFormProvider(activo));

    return ListView(
      children: [
        SizedBox(
          height: 250,
          width: 600,
          child: _ImageGallery(images: activoForm.images),
        ),
        const SizedBox(height: 10),
        Center(child: Text(activoForm.tAG, style: textStyles.titleSmall)),
        const SizedBox(height: 10),
        _ActivoInformation(activo: activo),
      ],
    );
  }
}

class _ActivoInformation extends ConsumerWidget {
  final Activo activo;
  const _ActivoInformation({required this.activo});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activoForm = ref.watch(activoFormProvider(activo));

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 15),
          CustomActivoField(
            isTopField: true,
            label: 'Etiqueta',
            initialValue: activoForm.tAG,
            onChanged:
                ref.read(activoFormProvider(activo).notifier).onTAGChanged,
          ),
          const SizedBox(height: 15),
          CustomActivoField(
            isTopField: true,
            label: 'Ubicacion',
            initialValue: activoForm.descriptionLocation,
            onChanged: ref
                .read(activoFormProvider(activo).notifier)
                .onDescriptionLocationChanged,
          ),
          const SizedBox(height: 15),
          CustomActivoField(
            isTopField: true,
            label: 'Serial',
            initialValue: activoForm.series,
            onChanged:
                ref.read(activoFormProvider(activo).notifier).onSeriesChanged,
          ),
          const SizedBox(height: 15),
          const CustomActivoField(
            isTopField: true,
            label: 'Descripcion',
            initialValue: 'Ingrese una descripcion',
          ),
          const SizedBox(height: 15),
          const SizedBox(height: 100),
        ],
      ),
    );
  }
}

class _ImageGallery extends StatelessWidget {
  final List<String> images;
  const _ImageGallery({required this.images});

  @override
  Widget build(BuildContext context) {
    if (images.isEmpty) {
      return ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          child: Image.asset('assets/no-image.png', fit: BoxFit.cover));
    }
    return PageView(
      scrollDirection: Axis.horizontal,
      controller: PageController(viewportFraction: 0.7),
      children: images.map((e) {
              late ImageProvider imageProvider;
              if (e.startsWith('http')) {
                imageProvider = NetworkImage(e);
              } else {
                imageProvider = FileImage(File(e));
              }
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  child: FadeInImage(
                    placeholder: const AssetImage('assets/jar-loading.gif'),
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                  )
              );
            }).toList(),
    );
  }
}
