import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tezz_cafe_app/presentation/screens/clients_screen/clients_orders_detail/widgets/order_item.dart';
import 'package:tezz_cafe_app/presentation/screens/menu/menu.dart';
import 'package:tezz_cafe_app/utils/constants/colors.dart';
import 'package:tezz_cafe_app/utils/constants/font_style.dart';
import 'package:tezz_cafe_app/utils/formatters/currency_formatter.dart';

class ClientsOrdersDetailScreen extends StatelessWidget {
  const ClientsOrdersDetailScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stol-1",
            style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600)),
        actions: [
          Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(currencyFormat.format(1234000), style: AppFontStyle.description2))
        ],
        scrolledUnderElevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primaryColor,
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const MenuScreen()));
        },
        child: const Icon(Icons.add,color: Colors.white,),
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
                return const OrderItem();
              },
              separatorBuilder: (context, index) => const Gap(16),
              itemCount: 3,
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
                child: Text("Stolni yopish"),
              ),
            ),
            const Gap(30),
          ],
        ),
      ),
    );
  }
}



