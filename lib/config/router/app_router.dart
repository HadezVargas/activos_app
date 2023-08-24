import 'package:activos_app/presentation/screens/screens.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static const inicialRoute = '/';
  static final routes = GoRouter(initialLocation: inicialRoute, routes: [
    GoRoute(
      path: '/',
      name: 'home',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/activo/:id',
      name: 'activo',
      builder: (context, state) => ActivoScreen(
        activoId: state.pathParameters['id'] ?? 'no-id',
      ),
    ),
    GoRoute(
      path: '/excel',
      name: 'excel',
      builder: (context, state) => const ExcelScreen(
      ),
    ),
  ]);
}
