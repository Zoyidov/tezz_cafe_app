import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:tezz_cafe_app/utils/constants/colors.dart';

class PlaceActionWidget extends StatelessWidget {
  const PlaceActionWidget({
    super.key, required this.actionText,
  });

  final String actionText ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () => context.pushNamed(RouteNames.place),
      child: Container(
        height: 24,
        margin: const EdgeInsets.only(right: 16),
        padding: const EdgeInsets.symmetric(horizontal: 8),
        alignment: Alignment.center,
        decoration: BoxDecoration(color: AppColors.seryFon, borderRadius: BorderRadius.circular(4)),
        child: Text(
          actionText,
          style: context.titleMedium
              ?.copyWith(color: AppColors.primaryColor, fontWeight: FontWeight.w600, height: 1.25),
        ),
      ),
    );
  }
}