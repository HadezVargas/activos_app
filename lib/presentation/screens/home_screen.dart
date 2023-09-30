import 'package:activos_app/domain/domain.dart';
import 'package:activos_app/infrastructure/infrastructure.dart';
import 'package:activos_app/presentation/providers/providers.dart';
import 'package:activos_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends ConsumerState {
  final ExcelGeneratorService exelGenetator =
      ExcelGeneratorServiceSyncfusionImpl();
  @override
  Widget build(BuildContext context) {
    final activosState = ref.watch(activosProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('ACTIVOS')),
      ),
      body: const _HomeView(),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton.extended(
              heroTag: 'new',
              onPressed: () {
                context.pushNamed('activo', pathParameters: {'id': 'new'});
              },
              label: const Text('Ingrese Activo')),
          const SizedBox(height: 10),
          FloatingActionButton.extended(
              heroTag: 'excel',
              onPressed: () {
                if (activosState.activos.isEmpty) return;
                exelGenetator.generateExcelFile(activosState.activos);
              },
              label: const Text('Crear Excel')),
          const SizedBox(height: 10),
          FloatingActionButton.extended(
              heroTag: 'delete',
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Estas seguro?'),
                    content: const Text(
                        'Esta acción borrará toda la base de datos de la aplicación'),
                    actions: [
                      FilledButton(
                          onPressed: () async {
                            await ref
                                .read(activosProvider.notifier)
                                .deleteAll();
                            await ref
                                .read(activosProvider.notifier)
                                .loadNextPage();
                            // ignore: use_build_context_synchronously
                            context.pop();
                          },
                          child: const Text('Aceptar'))
                    ],
                  ),
                );
              },
              label: const Text('Borrar base de datos')),
        ],
      ),
    );
  }
}

class _HomeView extends ConsumerStatefulWidget {
  const _HomeView();

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState {
  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    ref.read(activosProvider.notifier).loadNextPage();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final activosState = ref.watch(activosProvider);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: MasonryGridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 35,
        itemCount: activosState.activos.length,
        itemBuilder: (context, index) {
          final activo = activosState.activos[index];
          return GestureDetector(
            onTap: () => context.pushNamed('activo',
                pathParameters: {'id': activo.isarId.toString()}),
            child: ActivoCard(activo: activo),
          );
        },
      ),
    );
  }
}
