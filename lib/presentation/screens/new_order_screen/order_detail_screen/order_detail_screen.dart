import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:tezz_cafe_app/business_logic/approved_order/approved_bloc.dart';
import 'package:tezz_cafe_app/data/waitress/models/table_waitress/table_model_waitress.dart';
import 'package:tezz_cafe_app/presentation/screens/widgets/order_container.dart';
import 'package:tezz_cafe_app/utils/constants/colors.dart';
import 'package:tezz_cafe_app/utils/constants/font_style.dart';
import 'package:tezz_cafe_app/utils/formatters/currency_formatter.dart';

class OrderDetailScreen extends StatelessWidget {
  const OrderDetailScreen({super.key, required this.tableModelWaitress});

  final TableModelWaitress tableModelWaitress;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        title: Text(
          tableModelWaitress.name,
          style: const TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: BlocBuilder<ApprovedBloc, ApprovedState>(
              builder: (context, state) {
                final price = state.order?.totalOrders?.totalPrice ?? 0;
                return Text(
                  currencyFormat.format(price),
                  style: AppFontStyle.description2,
                );
              },
            ),
          )
        ],
      ),
      body: BlocBuilder<ApprovedBloc, ApprovedState>(
        builder: (context, state) {
          if (state.status.isInProgress) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state.status.isFailure) {
            return Center(
                child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(state.failure?.message ?? 'Xatolik', textAlign: TextAlign.center),
              ElevatedButton(
                  onPressed: () => context.read<ApprovedBloc>().add(FetchApprovedOrder(tableModelWaitress.id)),
                  child: const Text('Qayta yuklash'))
            ]));
          }
          return SingleChildScrollView(
            child: Column(
              children: [
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  itemBuilder: (context, index) {
                    final product = state.order?.totalOrders?.products[index];
                    return OrderContainer(
                      time: formatDate(product?.product.createdAt ??DateTime.now(), [ HH, ':', nn]),
                      foodName: product?.product.name ?? "",
                      price: currencyFormat.format(product?.product.price ?? 0),
                      count: "${product?.quantity.toString()} ta : ",
                      countPrice: currencyFormat.format(product?.price ?? 0),
                      image: product?.product.photo ?? "",
                      onTap: () {
                        context.read<ApprovedBloc>().add(DeleteApprovedOrder(tableModelWaitress.id, product?.product.id ?? "", product?.quantity ?? 0));
                      },
                    );
                  },
                  itemCount: state.order?.totalOrders?.products.length ?? 0,
                  shrinkWrap: true,
                ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  itemBuilder: (context, index) {
                    final product = state.order?.activeOrders?.products[index];
                    return OrderContainer(
                      color: AppColors.red,
                      time: formatDate(product?.product.createdAt ??DateTime.now(), [ HH, ':', nn]),
                      foodName: product?.product.name ?? "",
                      price: currencyFormat.format(product?.product.price ?? 0),
                      count: "${product?.quantity.toString()} ta : ",
                      countPrice: currencyFormat.format(product?.price ?? 0),
                      image: product?.product.photo ?? "",
                      onTap: () {
                        context.read<ApprovedBloc>().add(DeleteApprovedOrder(tableModelWaitress.id, product?.product.id ?? "", product?.quantity ?? 0));
                      },
                      isActive: true,
                    );
                  },
                  itemCount: state.order?.activeOrders?.products.length ?? 0,
                  shrinkWrap: true,
                ),
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(left: 20, right: 20, bottom: 25),
        height: 50,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          onPressed: () {},
          child: const Center(
            child: Text(
              "Buyurtma berish",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
