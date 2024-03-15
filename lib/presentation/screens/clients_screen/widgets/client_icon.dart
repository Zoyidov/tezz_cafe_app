import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tezz_cafe_app/data/waitress/models/table_waitress/table_model_waitress.dart';
import 'package:tezz_cafe_app/presentation/screens/clients_screen/widgets/circle_icon.dart';
import 'package:tezz_cafe_app/utils/constants/colors.dart';

class ClientIcon extends StatelessWidget {
  const ClientIcon({
    super.key,
    this.isActive = true,
    required this.table,
  });

  final bool isActive;
  final TableModelWaitress table;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleIcon(isActive: isActive),
        const Gap(8),
        Text(
          table.name,
          style: context.headlineSmall
              ?.copyWith(color: AppColors.black, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
