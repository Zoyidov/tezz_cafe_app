import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tezz_cafe_app/presentation/screens/call_screen/widgets/zone_show.dart';
import 'package:tezz_cafe_app/utils/constants/colors.dart';
import 'package:auto_size_text/auto_size_text.dart';

class RecievedContainer extends StatelessWidget {
  final String place;
  final String status;
  final String time;
  final String zone;
  final VoidCallback? onTap;

  const RecievedContainer({
    super.key,
    required this.place,
    required this.status,
    required this.zone,
    required this.time,
    this.onTap,
  });

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
          ZoneShow(zone: zone),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                time,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              IconButton(onPressed: onTap, icon: const Icon(Icons.clear))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: AutoSizeText(
                  place,
                  style: const TextStyle(
                      fontSize: 32, fontWeight: FontWeight.w600),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
              const Gap(20),
              Container(
                decoration: const BoxDecoration(
                    color: AppColors.white, shape: BoxShape.circle),
                padding: const EdgeInsets.all(20),
                child: Icon(
                  Icons.notifications_active_rounded,
                  color: AppColors.green,
                  size: 40,
                ),
              ),
            ],
          ),
          const Gap(16),
        ],
      ),
    );
  }
}
