import 'package:activos_app/domain/domain.dart';
import 'package:activos_app/presentation/providers/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';

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

  Activo _emptyActivo() {
    return Activo(
        isarId: Isar.autoIncrement,
        criticisms: 4,
        numberActiveMaximo: 'numberActiveMaximo',
        numberJDE: 'numberJDE',
        description: 'description',
        tAG: 'tAG',
        location: 'location',
        descriptionLocation: 'descriptionLocation',
        subRegionCommuneCorregimiento: 'subRegionCommuneCorregimiento',
        installation: 'installation',
        father: 'father',
        state: 'state',
        iPSIGMA: 'iPSIGMA',
        series: 'series',
        criticalityDescription: 'criticalityDescription',
        operationalNumber: 'operationalNumber',
        classification: 'classification',
        addressInternalLocation: 'addressInternalLocation',
        plant: 'plant',
        images: const []);
  }

  Future<void> loadActivo() async {
    try {
      if (state.id == 'new') {
        state = state.copyWith(isLoading: false, activo: _emptyActivo());
        return;
      }
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
