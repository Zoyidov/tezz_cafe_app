import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:tezz_cafe_app/business_logic/category/category_bloc.dart';
import 'package:tezz_cafe_app/data/table/models/table_model.dart';
import 'package:tezz_cafe_app/presentation/screens/clients_screen/clients_orders_detail/widgets/order_item.dart';
import 'package:tezz_cafe_app/presentation/screens/menu/menu.dart';
import 'package:tezz_cafe_app/utils/constants/colors.dart';
import 'package:tezz_cafe_app/utils/constants/font_style.dart';
import 'package:tezz_cafe_app/utils/formatters/currency_formatter.dart';

class ClientsOrdersDetailScreen extends StatelessWidget {
  const ClientsOrdersDetailScreen({super.key, required this.table});

  final TableModel table;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(table.name, style: const TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600)),
        actions: [
          Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(currencyFormat.format(table.totalPrice), style: AppFontStyle.description2))
        ],
        scrolledUnderElevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primaryColor,
        onPressed: () {
          context.read<CategoryBloc>().add(FetchCategoriesEvent());
          Navigator.push(context, MaterialPageRoute(builder: (context) => const MenuScreen()));
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                final order = table.activeOrders.firstOrNull?.products[index];
                return  OrderItem(activeOrder: table.activeOrders.firstOrNull!, product: order);
              },
              separatorBuilder: (context, index) => const Gap(16),
              itemCount: table.activeOrders.firstOrNull?.products.length ?? 0,
            ),
            const Gap(10),
            SizedBox(
              width: context.width / 2,
              child: FilledButton(
                onPressed: () {},
                style: FilledButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                  backgroundColor: AppColors.red,
                ),
                child: const Text("Stolni yopish"),
              ),
            ),
            const Gap(30),
          ],
        ),
      ),
    );
  }
}
