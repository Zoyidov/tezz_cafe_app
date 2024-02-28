import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:gap/gap.dart';
import 'package:tezz_cafe_app/business_logic/order/order_bloc.dart';
import 'package:tezz_cafe_app/business_logic/product/product_bloc.dart';
import 'package:tezz_cafe_app/data/category/models/category_model.dart';
import 'package:tezz_cafe_app/data/product/models/product_model.dart';
import 'package:tezz_cafe_app/data/table/models/table_model.dart';
import 'package:tezz_cafe_app/presentation/screens/menu/widgets/place_action.dart';
import 'package:tezz_cafe_app/tab_box/tab_box.dart';
import 'package:tezz_cafe_app/utils/constants/api_constants.dart';
import 'package:tezz_cafe_app/utils/constants/colors.dart';
import 'package:tezz_cafe_app/utils/constants/font_style.dart';
import 'package:tezz_cafe_app/utils/constants/image_strings.dart';
import 'package:tezz_cafe_app/utils/formatters/currency_formatter.dart';
import 'package:toastification/toastification.dart';

class FoodDetailScreen extends StatelessWidget {
  const FoodDetailScreen({super.key, required this.product, required this.table});

  final ProductModel product;
  final TableModel table;

  @override
  Widget build(BuildContext context) {
    return BlocListener<OrderBloc, OrderState>(
      listener: (context, state) {
        if (state.status.isFailure) {
          toastification.show(
            context: context,
            type: ToastificationType.error,
            style: ToastificationStyle.fillColored,
            title: const Text('Xatolik'),
            autoCloseDuration: const Duration(seconds: 5),
            alignment: Alignment.bottomCenter,
            description: Text(state.failure?.message ?? 'Xatolik'),
          );
        }
        if (state.status.isInProgress) {
          showDialog(
            barrierDismissible: true,
            context: context,
            builder: (context) => Center(child: CircularProgressIndicator(color: AppColors.primaryColor)),
          );
        }
        if (state.status.isSuccess) {
          toastification.show(
            context: context,
            type: ToastificationType.success,
            style: ToastificationStyle.fillColored,
            title: const Text('Muvaffaqiyatli'),
            autoCloseDuration: const Duration(seconds: 5),
            alignment: Alignment.bottomCenter,
            description: const Text('Maxsulot yaratildi'),
          );
          context.pushAndRemoveUntil(const TabBox());
        }
      },
      child: BlocBuilder<ProductBloc, ProductState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text(product.name,
                  style: const TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600)),
              actions: [
                PlaceActionWidget(
                  actionText: table.name,
                )
              ],
            ),
            body: SingleChildScrollView(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: 200,
                    width: 336,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: Image.network(ApiConstants.imageBaseUrl + (product.photo ?? ''),
                        fit: BoxFit.cover,
                        height: 170,
                        width: double.infinity,
                        errorBuilder: (context, error, stackTrace) => Image.asset(
                              AppImages.imageNotFound,
                              fit: BoxFit.cover,
                              height: 170,
                              width: double.infinity,
                            )),
                  ),
                  const Gap(12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        product.name,
                        style: context.titleMedium?.copyWith(
                          color: AppColors.black,
                          fontWeight: FontWeight.w600,
                          height: 1.25,
                          fontSize: 20,
                        ),
                      ),
                      const Gap(12),
                      Row(
                        children: [
                          Text(
                            currencyFormat.format(product.price),
                            style: AppFontStyle.description2.copyWith(color: AppColors.red),
                          ),
                          const Gap(14),
                          if (product.sale == true)
                            Text(
                              currencyFormat.format(product.oldPrice),
                              style: context.labelSmall?.copyWith(
                                color: AppColors.black400,
                                height: 1.6,
                                decoration: TextDecoration.lineThrough,
                                fontSize: 10,
                              ),
                            ),
                        ],
                      ),
                    ],
                  ),
                  const Gap(12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Divider(),
                      const Gap(12),
                      Text('Tarif:',
                          style: context.titleMedium?.copyWith(color: AppColors.grey500, fontWeight: FontWeight.w600)),
                      const Gap(4),
                      Text(
                        product.description,
                        style: AppFontStyle.description.copyWith(color: AppColors.grey500),
                      )
                    ],
                  ),
                ],
              ),
            ),
            floatingActionButton: AnimatedOpacity(
              duration: const Duration(milliseconds: 300),
              // top: state.isVisible ? 0 : 100,
              opacity: 1,
              child: Row(mainAxisSize: MainAxisSize.min, children: [
                IconButton.filledTonal(
                    onPressed: () {
                      context.read<ProductBloc>().add(DecrementProductCountEvent());
                    },
                    icon: const Icon(Icons.remove),
                    style: iconButtonStyle),
                const Gap(12),
                Text(
                  state.count.toString(),
                  style: context.titleMedium?.copyWith(
                    color: AppColors.black,
                    fontWeight: FontWeight.w600,
                    height: 1.25,
                    fontSize: 20,
                  ),
                ),
                const Gap(12),
                IconButton.filledTonal(
                    onPressed: () {
                      context.read<ProductBloc>().add(IncrementProductCountEvent());
                    },
                    icon: const Icon(Icons.add),
                    style: iconButtonStyle),
              ]),
            ),
            bottomNavigationBar: Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12.0, bottom: 20),
              child: FilledButton(
                style: FilledButton.styleFrom(
                  backgroundColor: AppColors.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  context.read<OrderBloc>().add(CreateOrderEvent(
                        tableId: table.id,
                        productId: product.id,
                        quantity: state.count,
                      ));
                },
                child: Text(currencyFormat.format(product.price * state.count), style: AppFontStyle.description2),
              ),
            ),
          );
        },
      ),
    );
  }
}

final iconButtonStyle = IconButton.styleFrom(
  backgroundColor: AppColors.secondaryColor,
  foregroundColor: AppColors.primaryColor,
  minimumSize: const Size.square(44),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(12),
  ),
);
