import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ZoneShow extends StatelessWidget {
  const ZoneShow({
    super.key,
    required this.zone,
  });

  final String zone;

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      zone,
      style: const TextStyle(
        fontSize: 16,
      ),
    );
  }
}
