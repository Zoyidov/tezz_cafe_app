import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

class ToastService {
  static const Duration defaultDuration = Duration(seconds: 3);

  static void showErrorToast(BuildContext context, String errorMessage,
      {Duration? duration}) {
    toastification.show(
      context: context,
      type: ToastificationType.error,
      style: ToastificationStyle.fillColored,
      title: const Text('Xatolik'),
      autoCloseDuration: duration ?? defaultDuration,
      alignment: Alignment.topCenter,
      description: Text(errorMessage),
    );
  }

  static void showSuccessToast(BuildContext context, String successMessage,
      {Duration? duration}) {
    toastification.show(
      context: context,
      type: ToastificationType.success,
      style: ToastificationStyle.fillColored,
      title: const Text('Sizning buyurtmangiz qabul qilindi'),
      autoCloseDuration: duration ?? defaultDuration,
      alignment: Alignment.topCenter,
    );
  }
}
