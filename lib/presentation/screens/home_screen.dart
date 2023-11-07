import 'package:activos_app/domain/domain.dart';
import 'package:activos_app/presentation/providers/providers.dart';
import 'package:activos_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';

import '../../infrastructure/services/excel_generator_service_syncfusion_impl.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends ConsumerState {
  final ExcelGeneratorService exelGenetator =
      ExcelGeneratorServiceSyncfusionImpl(plant: 'generico');
  @override
  void initState() {
    super.initState();
    ref.read(activosProvider.notifier).loadNextPage();
  }

  lista(Future<List<Activo>> lista) async {
    final activos = await lista;
    return activos;
  }

  @override
  Widget build(BuildContext context) {
    final activosState = ref.watch(activosProvider);
    final activosExcel = ref.read(activosRepositoryProvider).getAll();
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
                try {
                  activosExcel.then((value) {
                    List<Activo> activos = value;
                    exelGenetator.generateExcelFile(activos);
                  });
                } catch (e) {
                  // print(e);
                }
              },
              label: const Text('Crear Excel')),
          const SizedBox(height: 10),
          FloatingActionButton.extended(
              heroTag: 'delete',
              onPressed: () {
                _customShowDialog(context);
              },
              label: const Text('Borrar base de datos')),
        ],
      ),
    );
  }

  Future<dynamic> _customShowDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Estas seguro?'),
        content: const Text(
            'Esta acción borrará toda la base de datos de la aplicación'),
        actions: [
          FilledButton(
              onPressed: () {
                ref.read(activosProvider.notifier).deleteAll();
                ref.read(activosProvider.notifier).clearScreen();
                context.pop();
              },
              child: const Text('Aceptar'))
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
