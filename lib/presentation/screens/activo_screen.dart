import 'package:activos_app/presentation/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
      body: const Center(
        child: Text('Hola Mundo'),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){}, child: const Icon(Icons.save_as_outlined),),
    );
  }
}
