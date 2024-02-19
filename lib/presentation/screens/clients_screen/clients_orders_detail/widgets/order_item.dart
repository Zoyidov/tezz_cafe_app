import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tezz_cafe_app/presentation/screens/clients_screen/widgets/circle_icon.dart';
import 'package:date_format/date_format.dart';
import 'package:tezz_cafe_app/utils/constants/colors.dart';
import 'package:tezz_cafe_app/utils/constants/font_style.dart';
import 'package:tezz_cafe_app/utils/constants/image_strings.dart';
import 'package:tezz_cafe_app/utils/formatters/currency_formatter.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.textFieldColor,
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            decoration: BoxDecoration(
              border: BorderDirectional(bottom: BorderSide(color: AppColors.grey100)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const CircleIcon(isActive: true),
                    const Gap(8),
                    const Text('Chaqiruv', style: AppFontStyle.description),
                    const Gap(8),
                    Text(
                      '/ ${formatDate(DateTime.now(), [HH, ':', nn])}',
                      style: context.bodySmall?.copyWith(color: AppColors.grey400),
                    ),
                  ],
                ),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.clear), color: AppColors.grey500),
              ],
            ),
          ),
          const Gap(12),
          Row(
            children: [
              Container(
                height: 80,
                width: 80,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: Image.asset(
                  AppImages.food1,
                  fit: BoxFit.cover,
                ),
              ),
              const Gap(12),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'G’ijduvon shashlik Ajoyib shashlik',
                      style: AppFontStyle.description2
                          .copyWith(fontWeight: FontWeight.w600, color: AppColors.black),
                    ),
                    const Gap(8),
                    Text(
                      currencyFormat.format(56000),
                      style: AppFontStyle.mIn12.copyWith(color: AppColors.grey400),
                    ),
                    const Gap(4),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          '3 ta : ',
                          style: AppFontStyle.description2
                              .copyWith(fontWeight: FontWeight.w600, color: AppColors.primaryColor),
                        ),
                        Text(currencyFormat.format(double.parse("168000")),
                            style: AppFontStyle.description2
                                .copyWith(fontWeight: FontWeight.w600, color: AppColors.grey500)),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
