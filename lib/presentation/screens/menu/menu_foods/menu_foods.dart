import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tezz_cafe_app/presentation/screens/menu/food_detail/food_detail.dart';
import 'package:tezz_cafe_app/presentation/screens/menu/widgets/place_action.dart';
import 'package:tezz_cafe_app/utils/constants/colors.dart';
import 'package:tezz_cafe_app/utils/constants/font_style.dart';
import 'package:tezz_cafe_app/utils/constants/image_strings.dart';
import 'package:tezz_cafe_app/utils/formatters/currency_formatter.dart';


class MenuFoodsScreen extends StatelessWidget {
  const MenuFoodsScreen({super.key,});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BashBarmoq",style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600)),
        actions: const [PlaceActionWidget()],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 20,
          childAspectRatio: 162 / 232,
        ),
        itemCount: 5,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const FoodDetailScreen()));
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Image.network(
                      "https://picsum.photos/seed/picsum/200/300",
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
                    "BeshBarmoq",
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
                  uzbekCurrencyFormat.format(1234000),
                  // '356 000 uzs',
                  style: AppFontStyle.description2.copyWith(color: AppColors.red),
                )
              ],
            ),
          );
        },
      )
        // Skeletonizer(
        //       child: GridView.builder(
        //         padding: const EdgeInsets.all(12),
        //         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //           crossAxisCount: 2,
        //           crossAxisSpacing: 12,
        //           mainAxisSpacing: 20,
        //           childAspectRatio: 162 / 232,
        //         ),
        //         itemCount: 10,
        //         itemBuilder: (context, index) {
        //           // final product = state.products[index];
        //           return Column(
        //             crossAxisAlignment: CrossAxisAlignment.stretch,
        //             children: [
        //               Container(
        //                 clipBehavior: Clip.antiAlias,
        //                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        //                 child: Image.asset(AppImages.food,
        //                     fit: BoxFit.cover,
        //                     height: 170,
        //                     width: double.infinity,
        //                     errorBuilder: (context, error, stackTrace) => Image.asset(
        //                       AppImages.imageNotFound,
        //                       fit: BoxFit.cover,
        //                       height: 170,
        //                       width: double.infinity,
        //                     )),
        //               ),
        //               const Gap(12),
        //               Text(
        //                 'Tovuq shashlik',
        //                 style: context.titleMedium?.copyWith(
        //                   color: AppColors.black,
        //                   fontWeight: FontWeight.w600,
        //                   height: 1.25,
        //                   fontSize: 18,
        //                 ),
        //               ),
        //               const Gap(8),
        //               Text(
        //                 '356 000 uzs',
        //                 style: AppFontStyle.description2.copyWith(color: AppColors.red),
        //               )
        //             ],
        //           );
        //         },
        //       ),
        //     );

    );
  }
}
