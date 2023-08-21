import 'package:activos_app/domain/domain.dart';
import 'package:activos_app/presentation/providers/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final activoProvider = StateNotifierProvider.autoDispose
    .family<ActivoNotifier, ActivoState, String>((ref, activoId) {
  final activosRepository = ref.watch(activosRepositoryProvider);
  return ActivoNotifier(
      activosRepository: activosRepository, activoId: activoId);
});

class ActivoNotifier extends StateNotifier<ActivoState> {
  final ActivosRepository activosRepository;
  ActivoNotifier({
    required this.activosRepository,
    required String activoId,
  }) : super(ActivoState(id: activoId)) {
    loadActivo();
  }

  Future<void> loadActivo() async {
    try {
      final activo = await activosRepository.getActivoById(state.id);
      state = state.copyWith(
        isLoading: false,
        activo: activo,
      );

    } catch (e) {
      // manejar producto no encontrado
    }
  }
}

class ActivoState {
  final String id;
  final Activo? activo;
  final bool isLoading;

  ActivoState({
    required this.id,
    this.activo,
    this.isLoading = true,
  });

  ActivoState copyWith({
    String? id,
    Activo? activo,
    bool? isLoading,
  }) =>
      ActivoState(
        id: id ?? this.id,
        activo: activo ?? this.activo,
        isLoading: isLoading ?? this.isLoading,
      );
}
