import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tezz_cafe_app/presentation/screens/clients_screen/widgets/circle_icon.dart';
import 'package:tezz_cafe_app/utils/constants/colors.dart';

class ClientIcon extends StatelessWidget {
  const ClientIcon({super.key, this.isActive = true,});

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleIcon(isActive: isActive),
        const Gap(8),
        Text(
          isActive ? 'Active' : 'Inactive',
          style: context.headlineSmall?.copyWith(color: AppColors.black, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
