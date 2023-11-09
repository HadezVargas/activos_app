import 'package:activos_app/presentation/providers/plantas_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class InitScreen extends ConsumerWidget {
  const InitScreen({super.key});

  @override
  Widget build(BuildContext context,  WidgetRef ref) {
final planta = ref.watch(plantasProvider);

    final List<String> plantas = [
      'Aguas Frias',
      'Ayura',
      'Barbosa',
      'Caldas',
      'La Cascada',
      'La Montaña',
      'Manantiales',
      'Palmitas',
      'Rionegro',
      'San Antonio',
      'San Cristobal',
      'San Nicolas',
      'Villa Hermosa',
    ];
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('Activos'))),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Escoja la planta en la que va a trabajar',
              style: TextStyle(fontSize: 17),
            ),
            const SizedBox(
              height: 10,
            ),
            DropdownButton(
              items: plantas.map((planta) => DropdownMenuItem(
                value: planta,
                child: Text(planta))).toList(),
              value: planta,
              onChanged: (value) => ref.read(plantasProvider.notifier).state = value!,)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.pushNamed('home'),
        child: const Icon(Icons.arrow_forward)
        ),
    );
  }
}
