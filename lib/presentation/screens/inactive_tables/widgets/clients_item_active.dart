import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tezz_cafe_app/data/table/models/table_model.dart';
import 'package:tezz_cafe_app/presentation/screens/inactive_tables/widgets/client_icon.dart';
import 'package:tezz_cafe_app/utils/constants/colors.dart';
import 'package:tezz_cafe_app/utils/formatters/currency_formatter.dart';

class ClientListItemActive extends StatelessWidget {
  const ClientListItemActive({super.key, required this.table});

  final TableModel table;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () {
      //   Navigator.push(context, MaterialPageRoute(builder: (context) => ClientsOrdersDetailScreen(table: table)));
      // },
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
                ClientIcon(table: table),
                Text(
                    formatDate(table.createdAt, [HH, ':', nn]),
                  // '12:00',
                  style: context.bodySmall?.copyWith(color: AppColors.grey400),
                ),
              ],
            ),
            const Gap(20),
            Text(
              currencyFormat.format(0),
              textAlign: TextAlign.right,
              style: context.titleMedium?.copyWith(color: AppColors.black),
            )
          ],
        ),
      ),
    );
  }
}
