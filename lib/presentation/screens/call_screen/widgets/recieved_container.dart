import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tezz_cafe_app/utils/constants/colors.dart';
import 'package:auto_size_text/auto_size_text.dart';
class RecievedContainer extends StatelessWidget {
  final String type;
  final String place;
  final String status;
  final VoidCallback? onTap;

  const RecievedContainer({super.key, required this.type, required this.place, required this.status, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: AppColors.textFieldColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                type,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              IconButton(onPressed: onTap, icon: const Icon(Icons.clear))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: AutoSizeText(
                  place,
                  style: const TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
                  overflow: TextOverflow.ellipsis,
                  
                  maxLines: 1,
                ),
              ),
              const Gap(20),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(color: AppColors.white, shape: BoxShape.circle),
                  padding: const EdgeInsets.all(20),
                  child:  Icon(
                    Icons.notifications_active_rounded,
                    color: AppColors.green,
                    size: 40,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
