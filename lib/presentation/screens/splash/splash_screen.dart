import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tezz_cafe_app/business_logic/new_orders/new_orders_bloc.dart';
import 'package:tezz_cafe_app/business_logic/no_active_table/no_active_table_bloc.dart';
import 'package:tezz_cafe_app/business_logic/table/table_bloc.dart';
import 'package:tezz_cafe_app/business_logic/waiters/waiters_call_bloc.dart';
import 'package:tezz_cafe_app/business_logic/zone/zone_bloc.dart';
import 'package:tezz_cafe_app/presentation/screens/auth/login.dart';
import 'package:tezz_cafe_app/tab_box/tab_box.dart';
import 'package:tezz_cafe_app/utils/constants/image_strings.dart';
import 'package:tezz_cafe_app/utils/local_storage/storage_keys.dart';
import 'package:tezz_cafe_app/utils/local_storage/storage_repository.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _navigateToNextScreen(context);
    super.initState();
  }

  void _navigateToNextScreen(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      final bool? isAuth = StorageRepository.getBool(StorageKeys.isAuth);
      if (isAuth == null || !isAuth) {
        //      BlocProvider(create: (context) => ZoneBloc()..add(GetAllZonesEvent())),
        //       BlocProvider(create: (context) => TableBloc()..add(GetAllTablesEvent())),

        context.pushAndRemoveUntil(const LoginScreen());
        return;
      }
      context.read<ZoneBloc>().add(GetAllZonesEvent());
      context.read<TableBloc>().add(GetAllTablesEvent());
      context.read<NewOrdersBloc>().add(FetchNewOrdersEvent());
      context.read<NoActiveTableBloc>().add(FetchNoActiveTables());
      context.read<WaitersCallBloc>().add(FetchCallsEvent());
      context.pushAndRemoveUntil(const TabBox());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          AppImages.appIcon,
          width: context.width * 0.5,
        ),
      ),
    );
  }
}
