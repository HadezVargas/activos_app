import 'package:activos_app/domain/domain.dart';
import 'package:activos_app/presentation/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widgets/widgets.dart';

class ActivoScreen extends ConsumerWidget {
  final String activoId;
  const ActivoScreen({super.key, required this.activoId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activoState = ref.watch(activoProvider(activoId));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Editar Activo'),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.camera_alt_outlined))
        ],
      ),
      body: activoState.isLoading
        ? const FullLoader()
        : _ActivoView(activo: activoState.activo!),
      floatingActionButton: FloatingActionButton(onPressed: (){}, child: const Icon(Icons.save_as_outlined),),
    );
  }
}

class _ActivoView extends StatelessWidget {
  final Activo activo;

  const _ActivoView({required this.activo});

  @override
  Widget build(BuildContext context) {
    final textStyles = Theme.of(context).textTheme;

    return ListView(
      children: [
        SizedBox(
          height: 250,
          width: 600,
          child: _ImageGallery(images: activo.images),
        ),
        const SizedBox(height: 10),
        Center(child: Text(activo.title, style: textStyles.titleSmall)),
        const SizedBox(height: 10),
        _ProductInformation(activo: activo),
      ],
    );
  }
}

class _ProductInformation extends ConsumerWidget {
  final Activo activo;
  const _ProductInformation({required this.activo});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Generales'),
          const SizedBox(height: 15),
          CustomActivoField(
            isTopField: true,
            label: 'Nombre',
            initialValue: activo.title,
          ),
          // CustomActivoField(
          //   isTopField: true,
          //   label: 'Slug',
          //   initialValue: activo.slug,
          // ),
          // CustomActivoField(
          //   isBottomField: true,
          //   label: 'Precio',
          //   keyboardType: const TextInputType.numberWithOptions(decimal: true),
          //   initialValue: activo.price.toString(),
          // ),
          const SizedBox(height: 15),
          // const Text('Extras'),
          // _SizeSelector(selectedSizes: activo.sizes),
          // const SizedBox(height: 5),
          // _GenderSelector(selectedGender: activo.gender),
          // const SizedBox(height: 15),
          // CustomProductField(
          //   isTopField: true,
          //   label: 'Existencias',
          //   keyboardType: const TextInputType.numberWithOptions(decimal: true),
          //   initialValue: activo.stock.toString(),
          // ),
          // CustomActivoField(
          //   maxLines: 6,
          //   label: 'Descripción',
          //   keyboardType: TextInputType.multiline,
          //   initialValue: activo.description,
          // ),
          // CustomActivoField(
          //   isBottomField: true,
          //   maxLines: 2,
          //   label: 'Tags (Separados por coma)',
          //   keyboardType: TextInputType.multiline,
          //   initialValue: activo.tag,
          // ),
          const SizedBox(height: 100),
        ],
      ),
    );
  }
}

// class _SizeSelector extends StatelessWidget {
//   final List<String> selectedSizes;
//   final List<String> sizes = const ['XS', 'S', 'M', 'L', 'XL', 'XXL', 'XXXL'];

//   const _SizeSelector({required this.selectedSizes});

//   @override
//   Widget build(BuildContext context) {
//     return SegmentedButton(
//       showSelectedIcon: false,
//       segments: sizes.map((size) {
//         return ButtonSegment(
//             value: size,
//             label: Text(size, style: const TextStyle(fontSize: 10)));
//       }).toList(),
//       selected: Set.from(selectedSizes),
//       onSelectionChanged: (newSelection) {
//         print(newSelection);
//       },
//       multiSelectionEnabled: true,
//     );
//   }
// }

// class _GenderSelector extends StatelessWidget {
//   final String selectedGender;
//   final List<String> genders = const ['men', 'women', 'kid'];
//   final List<IconData> genderIcons = const [
//     Icons.man,
//     Icons.woman,
//     Icons.boy,
//   ];

//   const _GenderSelector({required this.selectedGender});

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: SegmentedButton(
//         multiSelectionEnabled: false,
//         showSelectedIcon: false,
//         style: const ButtonStyle(visualDensity: VisualDensity.compact),
//         segments: genders.map((size) {
//           return ButtonSegment(
//               icon: Icon(genderIcons[genders.indexOf(size)]),
//               value: size,
//               label: Text(size, style: const TextStyle(fontSize: 12)));
//         }).toList(),
//         selected: {selectedGender},
//         onSelectionChanged: (newSelection) {
//           print(newSelection);
//         },
//       ),
//     );
//   }
// }

class _ImageGallery extends StatelessWidget {
  final List<String> images;
  const _ImageGallery({required this.images});

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.horizontal,
      controller: PageController(viewportFraction: 0.7),
      children: images.isEmpty
          ? [
              ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  child: Image.asset('assets/no-image.png',
                      fit: BoxFit.cover))
            ]
          : images.map((e) {
              return ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                child: Image.network(
                  e,
                  fit: BoxFit.cover,
                ),
              );
            }).toList(),
    );
  }
}
