import 'package:activos_app/presentation/providers/providers.dart';
import 'package:activos_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('ACTIVOS')),
        actions: [
          IconButton(
            onPressed: () {
              context.pushNamed('excel');
            },
            icon: const Icon(Icons.download),
          ),
        ],
      ),
      body: const _HomeView(),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            context.pushNamed('activo',
                pathParameters: {'id': 'new'});
          },
          label: const Text('Ingrese Activo')),
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
        crossAxisCount: 1,
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
