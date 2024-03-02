import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:gap/gap.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:tezz_cafe_app/business_logic/category/category_bloc.dart';
import 'package:tezz_cafe_app/data/waitress/models/table_waitress/table_model_waitress.dart';
import 'package:tezz_cafe_app/presentation/screens/menu/menu_foods/menu_foods.dart';
import 'package:tezz_cafe_app/presentation/screens/menu/widgets/place_action.dart';
import 'package:tezz_cafe_app/utils/constants/api_constants.dart';
import 'package:tezz_cafe_app/utils/constants/colors.dart';
import 'package:tezz_cafe_app/utils/constants/image_strings.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key, required this.table});

  // final String actionText;
  final TableModelWaitress table;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600)),
        actions: [PlaceActionWidget(actionText: table.name,)],
        scrolledUnderElevation: 0,
      ),
      body: BlocBuilder<CategoryBloc, CategoryState>(
        builder: (context, state) {
          if (state.status.isInProgress) {
            return const CustomMenuShimmer();
          }
          if (state.status.isFailure) {
            return Center(
                child: Text("Xatolik yuz berdi: ${state.failure?.message ?? ''}",
                    textAlign: TextAlign.center, style: context.titleLarge));
          }
          return ListView.separated(
            padding: const EdgeInsets.all(16),
            itemBuilder: (context, index) {
              final menuItem = state.categories[index];
              return GestureDetector(
                onTap: () {
                  // context.read<ProductBloc>().add(FetchProductsEvent(categoryId: menuItem.id));
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>  MenuFoodsScreen(category: menuItem, table: table,)));
                  // context.pushNamed(RouteNames.category, arguments: menuItem);
                  // context.read<ProductBloc>().add(GetProductByMenuId(menuItem.id.toString()));
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
                      child: Image.network(
                        ApiConstants.imageBaseUrl + menuItem.photo,
                        fit: BoxFit.cover,
                        width: double.infinity,
                        cacheHeight: 1080,
                        cacheWidth: 1920,
                        height: 170,
                        errorBuilder: (context, error, stackTrace) {
                          return Image.asset(
                            AppImages.imageNotFound,
                            fit: BoxFit.contain,
                            width: double.infinity,
                            height: 170,
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: Text(
                        menuItem.name,
                        style: context.headlineSmall
                            ?.copyWith(color: AppColors.black, fontWeight: FontWeight.w600, height: 1.25),
                      ),
                    ),
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) => const Gap(16),
            itemCount: state.categories.length,
          );
        },
      ),
    );
  }
}

class CustomMenuShimmer extends StatelessWidget {
  const CustomMenuShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      child: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemBuilder: (context, index) {
          // final menuItem = state.categories[index];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
                child: Image.network(
                  '',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  cacheHeight: 1080,
                  cacheWidth: 1920,
                  height: 170,
                  errorBuilder: (context, error, stackTrace) {
                    return Image.asset(
                      AppImages.imageNotFound,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: 170,
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Text(
                  'menuItem.name',
                  style: context.headlineSmall
                      ?.copyWith(color: AppColors.black, fontWeight: FontWeight.w600, height: 1.25),
                ),
              ),
            ],
          );
        },
        separatorBuilder: (context, index) => const Gap(16),
        itemCount: 5,
      ),
    );
  }
}
