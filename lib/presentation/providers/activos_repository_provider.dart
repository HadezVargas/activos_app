import 'package:activos_app/domain/domain.dart';
import 'package:activos_app/infrastructure/infrastructure.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final activosRepositoryProvider = Provider<ActivosRepository>((ref) {
  final activosRepository = ActivosRepositoryImpl(LocalIsarDatasourceImpl());
  return activosRepository;
});
