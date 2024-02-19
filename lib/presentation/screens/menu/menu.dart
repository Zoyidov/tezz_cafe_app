import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tezz_cafe_app/presentation/screens/menu/menu_foods/menu_foods.dart';
import 'package:tezz_cafe_app/presentation/screens/menu/widgets/place_action.dart';
import 'package:tezz_cafe_app/utils/constants/colors.dart';
import 'package:tezz_cafe_app/utils/constants/image_strings.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu',
            style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600)),
        actions: const [PlaceActionWidget()],
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const MenuFoodsScreen()));
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
                    "https://picsum.photos/seed/picsum/200/300",
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
                    "BeshBarmoq",
                    style: context.headlineSmall?.copyWith(
                        color: AppColors.black, fontWeight: FontWeight.w600, height: 1.25),
                  ),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) => const Gap(16),
        itemCount: 5,
      ),
      // Skeletonizer(
      //       child: ListView.separated(
      //         padding: const EdgeInsets.all(16),
      //         itemBuilder: (context, index) {
      //           return Column(
      //             crossAxisAlignment: CrossAxisAlignment.stretch,
      //             children: [
      //               Container(
      //                 clipBehavior: Clip.antiAlias,
      //                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
      //                 child: Image.asset(
      //                   AppImages.food1,
      //                   fit: BoxFit.cover,
      //                   width: double.infinity,
      //                   height: 170,
      //                   errorBuilder: (context, error, stackTrace) {
      //                     return Image.asset(
      //                       AppImages.imageNotFound,
      //                       fit: BoxFit.cover,
      //                       width: double.infinity,
      //                       height: 170,
      //                     );
      //                   },
      //                 ),
      //               ),
      //               Padding(
      //                 padding: const EdgeInsets.symmetric(vertical: 12),
      //                 child: Text(
      //                   "menuItem.title",
      //                   style: context.headlineSmall
      //                       ?.copyWith(color: AppColors.black, fontWeight: FontWeight.w600, height: 1.25),
      //                 ),
      //               ),
      //             ],
      //           );
      //         },
      //         separatorBuilder: (context, index) => const Gap(16),
      //         itemCount: 10,
      //       ),
      //     ),
    );
  }
}
