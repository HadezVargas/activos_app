import 'package:activos_app/config/theme/app_theme.dart';
import 'package:activos_app/presentation/screens/activo_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() => runApp(const ProviderScope(child: MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: AppTheme.getAppTheme(),
      home: const ActivoScreen(activoId: '123',)
    );
  }
}