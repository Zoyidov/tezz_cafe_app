import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tezz_cafe_app/presentation/screens/call_screen/widgets/zone_show.dart';
import 'package:tezz_cafe_app/utils/constants/colors.dart';

class NotificationContainer extends StatelessWidget {
  final String type;
  final String place;
  final String time;
  final String status;
  final String zone;
  final double size;
  final double padding;
  final VoidCallback? onTap;
  final Color? color;
  final bool isButton;

  const NotificationContainer({
    super.key,
    required this.type,
    required this.place,
    required this.time,
    required this.status,
    required this.zone,
    this.isButton = false,
    this.onTap,
    this.size = 40,
    this.padding = 20,
    this.color,
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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ZoneShow(zone: zone),
              Text(
                time,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const Divider(),
          const Gap(16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: AutoSizeText(
                  place,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              // Spacer(),
              const Gap(10),
              Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    color: AppColors.white, shape: BoxShape.circle),
                padding: EdgeInsets.all(padding),
                child: Icon(
                  Icons.notifications_active_rounded,
                  color: Colors.red,
                  size: size,
                ),
              ),
            ],
          ),
          Visibility(
            visible: isButton,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Gap(16.0),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: color ?? AppColors.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: onTap,
                  child: Text(
                    status,
                    style: const TextStyle(fontSize: 18, color: Colors.white),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
