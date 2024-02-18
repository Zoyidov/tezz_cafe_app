import 'package:flutter/material.dart';
import 'package:tezz_cafe_app/utils/constants/colors.dart';

class CircleIcon extends StatelessWidget {
  const CircleIcon({
    super.key,
    required this.isActive,
  });

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 12,
      width: 12,
      decoration: ShapeDecoration(shape: const CircleBorder(), color: isActive ? AppColors.green : AppColors.red),
    );
  }
}