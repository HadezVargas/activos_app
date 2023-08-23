import 'dart:io';

import 'package:activos_app/domain/domain.dart';
import 'package:flutter/material.dart';

class ActivoCard extends StatelessWidget {
  final Activo activo;
  const ActivoCard({super.key, required this.activo});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _ImageViewer(images: activo.images),
        Text(activo.tAG),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}

class _ImageViewer extends StatelessWidget {
  final List<String> images;
  const _ImageViewer({required this.images});

  @override
  Widget build(BuildContext context) {
    if (images.isEmpty) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          'assets/no-image.png',
          fit: BoxFit.cover,
          height: 250,
        ),
      );
    }
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: FadeInImage(
        fit: BoxFit.cover,
        height: 250,
        fadeOutDuration: const Duration(milliseconds: 100),
        fadeInDuration: const Duration(milliseconds: 200),
        placeholder: const AssetImage('assets/jar-loading.gif'),
        image: FileImage(File(images.first)),
      ),
    );
  }
}
