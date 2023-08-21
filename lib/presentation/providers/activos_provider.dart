import 'package:activos_app/domain/domain.dart';
import 'package:activos_app/presentation/providers/activos_repository_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final activosProvider =
    StateNotifierProvider<ActivosNotifier, ActivosState>((ref) {
  final activosRepository = ref.watch(activosRepositoryProvider);
  return ActivosNotifier(activosRepository: activosRepository);
});

class ActivosNotifier extends StateNotifier<ActivosState> {
  final ActivosRepository activosRepository;
  ActivosNotifier({required this.activosRepository}) : super(ActivosState()) {
    loadNextPage();
  }

  Future loadNextPage() async {
    if (state.isLoading || state.isLastPage) return;
    state = state.copyWith(isLoading: true);
    final activos = await activosRepository.getActivos(
        limit: state.limit, offset: state.offset);
    if (activos.isEmpty) {
      state = state.copyWith(isLoading: false, isLastPage: true);
      return;
    }
    state = state.copyWith(
        isLastPage: false,
        isLoading: false,
        offset: state.offset + 10,
        activos: [...activos, ...state.activos]);
  }
}

class ActivosState {
  final bool isLastPage;
  final bool isLoading;
  final int limit;
  final int offset;
  final List<Activo> activos;

  ActivosState(
      {this.isLastPage = false,
      this.isLoading = false,
      this.limit = 10,
      this.offset = 0,
      this.activos = const []});

  ActivosState copyWith(
          {bool? isLastPage,
          bool? isLoading,
          int? limit,
          int? offset,
          List<Activo>? activos}) =>
      ActivosState(
          isLastPage: isLastPage ?? this.isLastPage,
          isLoading: isLoading ?? this.isLoading,
          limit: limit ?? this.limit,
          offset: offset ?? this.offset,
          activos: activos ?? this.activos);
}
