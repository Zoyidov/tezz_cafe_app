import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tezz_cafe_app/app.dart';
import 'package:tezz_cafe_app/utils/di/service_locator.dart';
import 'package:tezz_cafe_app/utils/local_storage/storage_repository.dart';
import 'package:tezz_cafe_app/utils/services/sound_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  await StorageRepository.init();
  runApp(
    RepositoryProvider(
      create: (context) => SoundManager.getInstance(),
      child: const App(),
    ),
  );
}
