import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';

class ZoneShimmerWidget extends StatelessWidget {
  const ZoneShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final mockValues = [false, false, false];
    return Container(
      height: 40,
      alignment: Alignment.center,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: ToggleButtons(
          borderRadius: BorderRadius.circular(10),
          constraints: BoxConstraints(
              maxWidth: context.width * 0.3,
              minWidth: context.width * 0.3,
              minHeight: 36,
              maxHeight: 36),
          isSelected: mockValues,
          children: mockValues.map((e) => const Text('Teressa')).toList(),
        ),
      ),
    );
  }
}
