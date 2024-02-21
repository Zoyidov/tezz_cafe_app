import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:gap/gap.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:tezz_cafe_app/business_logic/product/product_bloc.dart';
import 'package:tezz_cafe_app/data/category/models/category_model.dart';
import 'package:tezz_cafe_app/presentation/screens/menu/food_detail/food_detail.dart';
import 'package:tezz_cafe_app/presentation/screens/menu/widgets/place_action.dart';
import 'package:tezz_cafe_app/utils/constants/api_constants.dart';
import 'package:tezz_cafe_app/utils/constants/colors.dart';
import 'package:tezz_cafe_app/utils/constants/font_style.dart';
import 'package:tezz_cafe_app/utils/constants/image_strings.dart';
import 'package:tezz_cafe_app/utils/formatters/currency_formatter.dart';

class MenuFoodsScreen extends StatelessWidget {
  const MenuFoodsScreen({
    super.key, required this.category, required this.actionText,
  });
  final CategoryModel category;
  final String actionText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
             Text(category.name, style: const TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600)),
        actions: [PlaceActionWidget(actionText: actionText,)],
        scrolledUnderElevation: 0,
      ),
      body: BlocBuilder<ProductBloc, ProductState>(
        builder: (context, state) {
          if (state.status.isInProgress) {
            return const CustomProductShimmer();
          }
          if (state.status.isFailure) {
            return Center(
                child: Text("Xatolik yuz berdi: ${state.failure?.message ?? ''}",
                    textAlign: TextAlign.center, style: context.titleLarge));
          }
          if (state.products.isEmpty) {
            return Center(
                child: Text("Mahsulotlar mavjud emas", textAlign: TextAlign.center, style: context.titleLarge));
          }
          return GridView.builder(
            padding: const EdgeInsets.all(12),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 20,
              childAspectRatio: 162 / 232,
            ),
            itemCount: state.products.length,
            itemBuilder: (context, index) {
              final product = state.products[index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>  FoodDetailScreen(product: product, actionText: actionText,)));
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                      child: Image.network(
                          product.photo,
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
                    Flexible(
                      child: Text(
                        product.name,
                        style: context.titleMedium?.copyWith(
                          color: AppColors.black,
                          fontWeight: FontWeight.w600,
                          height: 1.25,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    const Gap(8),
                    Text(
                      uzbekCurrencyFormat.format(product.price),
                      // '356 000 uzs',
                      style: AppFontStyle.description2.copyWith(color: AppColors.red),
                    )
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class CustomProductShimmer extends StatelessWidget {
  const CustomProductShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      child: GridView.builder(
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 20,
          childAspectRatio: 162 / 232,
        ),
        itemCount: 8,
        itemBuilder: (context, index) {
          // final product = state.products[index];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: Image.network('',
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
              Flexible(
                child: Text(
                  'product.name',
                  style: context.titleMedium?.copyWith(
                    color: AppColors.black,
                    fontWeight: FontWeight.w600,
                    height: 1.25,
                    fontSize: 18,
                  ),
                ),
              ),
              const Gap(8),
              Text(
                uzbekCurrencyFormat.format(1222232),
                // '356 000 uzs',
                style: AppFontStyle.description2.copyWith(color: AppColors.red),
              )
            ],
          );
        },
      ),
    );
  }
}
