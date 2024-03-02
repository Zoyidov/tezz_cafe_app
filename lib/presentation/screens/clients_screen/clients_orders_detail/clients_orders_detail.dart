import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:gap/gap.dart';
import 'package:lottie/lottie.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:tezz_cafe_app/business_logic/approved_order/approved_bloc.dart';
import 'package:tezz_cafe_app/business_logic/category/category_bloc.dart';
import 'package:tezz_cafe_app/data/waitress/models/table_waitress/table_model_waitress.dart';
import 'package:tezz_cafe_app/presentation/screens/clients_screen/clients_orders_detail/widgets/order_item.dart';
import 'package:tezz_cafe_app/presentation/screens/menu/menu.dart';
import 'package:tezz_cafe_app/utils/constants/colors.dart';
import 'package:tezz_cafe_app/utils/constants/font_style.dart';
import 'package:tezz_cafe_app/utils/constants/image_strings.dart';
import 'package:tezz_cafe_app/utils/formatters/currency_formatter.dart';

class ClientsOrdersDetailScreen extends StatelessWidget {
  const ClientsOrdersDetailScreen({super.key, required this.table});

  final TableModelWaitress table;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(table.name, style: const TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600)),
        actions: [
          BlocBuilder<ApprovedBloc, ApprovedState>(
            builder: (context, state) {
              if (state.status.isInProgress) {
                return Skeletonizer(
                  child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(currencyFormat.format(1000000), style: AppFontStyle.description2)),
                );
              }
              return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                      currencyFormat.format(
                          (state.order?.totalOrders?.totalPrice ?? 0) + (state.order?.activeOrders?.totalPrice ?? 0)),
                      style: AppFontStyle.description2));
            },
          )
        ],
        scrolledUnderElevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primaryColor,
        onPressed: () {
          context.read<CategoryBloc>().add(FetchCategoriesEvent());
          Navigator.push(context, MaterialPageRoute(builder: (context) => MenuScreen(table: table)));
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: BlocBuilder<ApprovedBloc, ApprovedState>(
        builder: (context, state) {
          if (state.status.isInProgress) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state.status.isFailure) {
            return Center(child: Text(state.failure?.message ?? ''));
          }
          if (state.order?.activeOrders == null && state.order?.totalOrders == null) {
            return Center(
                child: Column(
              children: [
                Lottie.asset(AppImages.noOrder),
                Text(" \"${table.name}\" da Hozircha Buyurtma Mavjud Emas", style: AppFontStyle.description2),
              ],
            ));
          }
          return SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    final product = state.order?.totalOrders?.products[index];
                    return OrderItem(product: product, onTap: () {
                      context.read<ApprovedBloc>().add(DeleteApprovedOrder(table.id, product?.product.id ?? "", product?.quantity ?? 0));
                    },);
                  },
                  separatorBuilder: (context, index) => const Gap(16),
                  itemCount: state.order?.totalOrders?.products.length ?? 0,
                ),
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    final product = state.order?.activeOrders?.products[index];
                    return OrderItem(product: product,isActive: true, onTap: () {
                      context.read<ApprovedBloc>().add(DeleteApprovedOrder(table.id, product?.product.id ?? "", product?.quantity ?? 0));
                    },
                    );
                  },
                  separatorBuilder: (context, index) => const Gap(16),
                  itemCount: state.order?.activeOrders?.products.length ?? 0,
                ),
                const Gap(10),
                SizedBox(
                  width: context.width / 2,
                  child: FilledButton(
                    onPressed: () {
                      AwesomeDialog(
                        context: context,
                        dialogType: DialogType.warning,
                        animType: AnimType.bottomSlide,
                        title: "Stolni yopish",
                        desc: '${table.name} ni yopmoqchimisiz?',
                        btnCancelOnPress: () {
                          // print(table.id);
                          // print(state.order?.totalOrders?.products.length);
                        },
                        btnOkOnPress: () {
                          context.read<ApprovedBloc>().add(CloseApprovedOrder(table.id));
                        },
                        btnOkText: 'Yopish',
                        btnCancelText: 'Bekor qilish',
                      ).show();
                    },
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
          );
        },
      ),
    );
  }
}
