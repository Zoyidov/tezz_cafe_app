import 'package:flutter/material.dart';
import 'package:tezz_cafe_app/app.dart';
import 'package:tezz_cafe_app/utils/di/service_locator.dart';
import 'package:tezz_cafe_app/utils/local_storage/storage_repository.dart';

void main() async {
  await setupLocator();
  await StorageRepository.init();
  runApp(const App());
}
