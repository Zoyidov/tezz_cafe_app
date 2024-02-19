import 'package:flutter/material.dart';
import 'package:tezz_cafe_app/utils/constants/colors.dart';

final appTheme = ThemeData(
    primaryColorDark: AppColors.mainColor,
    primaryColor: AppColors.mainColor,
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      isDense: true,
// constraints: const BoxConstraints(minWidth: 0, minHeight: 0),
      fillColor: AppColors.textFieldColor,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: const BorderSide(color: Colors.grey),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: const BorderSide(color: Colors.grey),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: const BorderSide(color: Colors.black),
      ),
    ),
    filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
      backgroundColor: AppColors.primaryColor,
      foregroundColor: AppColors.white,
      padding: const EdgeInsets.all(12),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
    )));
