import 'package:activos_app/domain/domain.dart';
import 'package:activos_app/presentation/providers/plantas_provider.dart';
import 'package:activos_app/presentation/providers/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';

final activoProvider = StateNotifierProvider.autoDispose
    .family<ActivoNotifier, ActivoState, String>((ref, activoId) {
  final activosRepository = ref.watch(activosRepositoryProvider);
  final planta = ref.watch(plantasProvider);
  return ActivoNotifier(
      activosRepository: activosRepository, activoId: activoId, planta:planta);
});

class ActivoNotifier extends StateNotifier<ActivoState> {
  final ActivosRepository activosRepository;
  ActivoNotifier({
    required this.activosRepository,
    required String activoId,
    required String planta,
  }) : super(ActivoState(id: activoId, planta: planta)) {
    loadActivo();
  }

  Activo _emptyActivo() {
    return Activo(
        isarId: Isar.autoIncrement,
        criticisms: 4,
        numberActiveMaximo: '',
        numberJDE: '',
        description1: '',
        description2: '',
        description3: '',
        tAG: '',
        location: '',
        descriptionLocation: '',
        subRegionCommuneCorregimiento: '',
        installation: '',
        father: '',
        state: '',
        iPSIGMA: '',
        series: '',
        criticalityDescription: '',
        operationalNumber: '',
        classification: '',
        addressInternalLocation: '',
        plant: state.planta,
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
  final String planta;
  final Activo? activo;
  final bool isLoading;

  ActivoState({
    required this.id,
    required this.planta,
    this.activo,
    this.isLoading = true,
  });

  ActivoState copyWith({
    String? id,
    String? planta,
    Activo? activo,
    bool? isLoading,
  }) =>
      ActivoState(
        id: id ?? this.id,
        planta: planta ?? this.planta,
        activo: activo ?? this.activo,
        isLoading: isLoading ?? this.isLoading,
      );
}
