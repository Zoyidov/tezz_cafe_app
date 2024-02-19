import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tezz_cafe_app/presentation/screens/menu/widgets/place_action.dart';
import 'package:tezz_cafe_app/utils/constants/colors.dart';
import 'package:tezz_cafe_app/utils/constants/font_style.dart';
import 'package:tezz_cafe_app/utils/constants/image_strings.dart';
import 'package:tezz_cafe_app/utils/formatters/currency_formatter.dart';

class FoodDetailScreen extends StatelessWidget {
  const FoodDetailScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BeshBarmoq",
            style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600)),
        actions: const [PlaceActionWidget()],
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
              child: Image.network("https://picsum.photos/seed/picsum/200/300",
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
                  "BeshBarmoq",
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
                      uzbekCurrencyFormat.format(56000),
                      style: AppFontStyle.description2.copyWith(color: AppColors.red),
                    ),
                    const Gap(14),
                    Text(
                      '546 000 uzs',
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
                Text(
                  'Tarkibi:',
                  style: context.titleMedium
                      ?.copyWith(color: AppColors.grey500, fontWeight: FontWeight.w600),
                ),
                const Gap(4),
                Text(
                  "1 Qo’y go’shti, yirik holda to’g’lalgan\n2 Jigar go’shti\n3 Piyoz, Uksus sepilgan,parrak qilib to’g’algan",
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
              onPressed: () {}, icon: const Icon(Icons.remove), style: iconButtonStyle),
          const Gap(12),
          Text(
            '1',
            style: context.titleMedium?.copyWith(
              color: AppColors.black,
              fontWeight: FontWeight.w600,
              height: 1.25,
              fontSize: 20,
            ),
          ),
          const Gap(12),
          IconButton.filledTonal(
              onPressed: () {}, icon: const Icon(Icons.add), style: iconButtonStyle),
        ]),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(12.0),
        child: FilledButton(
          style: FilledButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 20),
            backgroundColor: AppColors.primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          onPressed: () {},
          child: Text(currencyFormat.format(56000), style: AppFontStyle.description2),
        ),
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
