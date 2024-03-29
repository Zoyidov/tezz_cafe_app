import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:tezz_cafe_app/business_logic/approved_order/approved_bloc.dart';
import 'package:tezz_cafe_app/data/waitress/models/table_waitress/table_model_waitress.dart';
import 'package:tezz_cafe_app/presentation/screens/clients_screen/clients_orders_detail/clients_orders_detail.dart';
import 'package:tezz_cafe_app/presentation/screens/clients_screen/widgets/client_icon.dart';
import 'package:tezz_cafe_app/utils/constants/colors.dart';


class ClientListItemActive extends StatelessWidget {
  const ClientListItemActive({super.key, required this.table});

  final TableModelWaitress table;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {context.read<ApprovedBloc>().add(FetchApprovedOrder(table.id));
        Navigator.push(context, MaterialPageRoute(builder: (context) => ClientsOrdersDetailScreen(table: table)));
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
                ClientIcon(table: table),
                Text(
                  formatDate(table.createdAt, [HH, ':', nn]),
                  style: context.bodySmall?.copyWith(color: AppColors.grey400),
                ),
              ],
            ),
            const Gap(20),
            // Text(
            //   currencyFormat.format(table.activeOrders?.totalPrice ?? 0),
            //   textAlign: TextAlign.right,
            //   style: context.titleMedium?.copyWith(color: AppColors.black),
            // )
          ],
        ),
      ),
    );
  }
}
