import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tezz_cafe_app/presentation/screens/clients_screen/clients_orders_detail/clients_orders_detail.dart';
import 'package:tezz_cafe_app/presentation/screens/clients_screen/widgets/client_icon.dart';
import 'package:tezz_cafe_app/utils/constants/colors.dart';
import 'package:tezz_cafe_app/utils/formatters/currency_formatter.dart';

class ClientListItemActive extends StatelessWidget {
  const ClientListItemActive({super.key,});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const ClientsOrdersDetailScreen()));
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors.textFieldColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const ClientIcon(isActive: true),
                Text(
                  '12:00',
                  style: context.bodySmall?.copyWith(color: AppColors.grey400),
                ),
              ],
            ),
            const Gap(20),
            Text(
              currencyFormat.format(234000),
              textAlign: TextAlign.right,
              style: context.titleMedium?.copyWith(color: AppColors.black),
            )
          ],
        ),
      ),
    );
  }
}
