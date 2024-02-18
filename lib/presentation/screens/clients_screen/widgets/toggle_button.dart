import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:tezz_cafe_app/utils/constants/colors.dart';

class ToggleButtonsContainer extends StatelessWidget {
  const ToggleButtonsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      alignment: Alignment.center,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: ToggleButtons(
          color: Colors.black,
          selectedColor: Colors.white,
          fillColor: AppColors.black,
          borderRadius: BorderRadius.circular(10),
          selectedBorderColor: Colors.black,
          borderWidth: 1.5,
          constraints: BoxConstraints(
              maxWidth: context.width * 0.3, minWidth: context.width * 0.3, minHeight: 36, maxHeight: 36),
          isSelected: const [true, false, false],
          onPressed: (index) {},
          children: const [
            Text('Zall'),
            Text('Kabina'),
            Text('Teressa'),
          ],
        ),
      ),
    );
  }
}
