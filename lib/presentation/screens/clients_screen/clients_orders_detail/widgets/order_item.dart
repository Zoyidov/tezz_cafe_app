import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tezz_cafe_app/data/table/models/table_model.dart';
import 'package:tezz_cafe_app/presentation/screens/clients_screen/widgets/circle_icon.dart';
import 'package:date_format/date_format.dart';
import 'package:tezz_cafe_app/utils/constants/api_constants.dart';
import 'package:tezz_cafe_app/utils/constants/colors.dart';
import 'package:tezz_cafe_app/utils/constants/font_style.dart';
import 'package:tezz_cafe_app/utils/constants/image_strings.dart';
import 'package:tezz_cafe_app/utils/formatters/currency_formatter.dart';

class OrderItem extends StatelessWidget {
  const OrderItem(
      {super.key,
      required this.product,
      this.isActive = false,
      required this.onTap});

  final ProductElement? product;
  final bool isActive;
  final VoidCallback onTap;

  // final ProductProduct? product;
  // final ActiveOrders? activeOrder;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: isActive
            ? const Color(0xFFF91506).withOpacity(.1)
            : AppColors.textFieldColor,
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            decoration: BoxDecoration(
              border: BorderDirectional(
                  bottom: BorderSide(color: AppColors.textFieldColor)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleIcon(
                      isActive: isActive ? false : true,
                    ),
                    const Gap(8),
                    const Text('Chaqiruv', style: AppFontStyle.description),
                    const Gap(8),
                    Text(
                      '/ ${formatDate(product?.product.createdAt ?? DateTime.now(), [
                            HH,
                            ':',
                            nn
                          ])}',
                      style:
                          context.bodySmall?.copyWith(color: AppColors.grey400),
                    ),
                  ],
                ),
                IconButton(
                    onPressed: onTap,
                    icon: const Icon(Icons.clear),
                    color: AppColors.grey500),
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
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: Image.network(
                  ApiConstants.imageBaseUrl + (product?.product.photo ?? ""),
                  fit: BoxFit.cover,
                  cacheHeight: 1080,
                  cacheWidth: 1920,
                  errorBuilder: (context, error, stackTrace) {
                    return Image.asset(
                      AppImages.imageNotFound,
                      fit: BoxFit.cover,
                    );
                  },
                ),
              ),
              const Gap(12),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      product?.product.name ?? "",
                      style: AppFontStyle.description2.copyWith(
                          fontWeight: FontWeight.w600, color: AppColors.black),
                    ),
                    const Gap(8),
                    Text(
                      currencyFormat.format(product?.product.price ?? 0),
                      style:
                          AppFontStyle.mIn12.copyWith(color: AppColors.grey400),
                    ),
                    const Gap(4),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "${product?.quantity ?? 0} ta: ",
                          style: AppFontStyle.description2.copyWith(
                              fontWeight: FontWeight.w600,
                              color: AppColors.primaryColor),
                        ),
                        Text(currencyFormat.format(product?.price ?? 0),
                            style: AppFontStyle.description2.copyWith(
                                fontWeight: FontWeight.w600,
                                color: AppColors.grey500)),
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
