import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tezz_cafe_app/utils/constants/api_constants.dart';
import 'package:tezz_cafe_app/utils/constants/colors.dart';
import 'package:tezz_cafe_app/utils/constants/image_strings.dart';

class OrderContainer extends StatelessWidget {
  final String time;
  final String foodName;
  final String count;
  final String price;
  final String countPrice;
  final String image;
  final VoidCallback? onTap;
  final bool isActive;
  final Color? color;

  const OrderContainer({
    super.key,
    required this.time,
    required this.foodName,
    required this.count,
    required this.price,
    required this.countPrice,
    required this.image,
    this.onTap,
    this.isActive = false,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: isActive ? const Color(0xFFF91506).withOpacity(0.1) : AppColors.textFieldColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 12,
                    width: 12,
                    decoration: BoxDecoration(
                      color: color ?? AppColors.green,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const Gap(8),
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: "Chaqiruv  ",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.grey500),
                      ),
                      TextSpan(
                        text: time,
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.grey400),
                      )
                    ]),
                  ),
                ],
              ),
              IconButton(
                  onPressed: onTap,
                  icon: Icon(
                    Icons.clear,
                    color: AppColors.grey500,
                  ))
            ],
          ),
          const Divider(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: MediaQuery.of(context).size.height / 12,
                  width: MediaQuery.of(context).size.height / 12,
                  decoration: const BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    child: Image.network(
                      ApiConstants.imageBaseUrl + image,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      cacheHeight: 1080,
                      cacheWidth: 1920,
                      errorBuilder: (context, error, stackTrace) {
                        return Image.asset(
                          AppImages.imageNotFound,
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height / 12,
                        );
                      },
                    ),
                  )),
              const Gap(12),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      foodName,
                      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    const Gap(8),
                    Text(price, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: AppColors.grey400)),
                    const Gap(4),
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: count,
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: AppColors.primaryColor)),
                      TextSpan(
                          text: countPrice,
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: AppColors.grey500)),
                    ]))
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
