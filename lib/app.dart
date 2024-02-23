import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tezz_cafe_app/business_logic/auth/auth_bloc.dart';
import 'package:tezz_cafe_app/business_logic/category/category_bloc.dart';
import 'package:tezz_cafe_app/business_logic/cubit/tab_cubit.dart';
import 'package:tezz_cafe_app/business_logic/no_active_table/no_active_table_bloc.dart';
import 'package:tezz_cafe_app/business_logic/order/order_bloc.dart';
import 'package:tezz_cafe_app/business_logic/product/product_bloc.dart';
import 'package:tezz_cafe_app/business_logic/table/table_bloc.dart';
import 'package:tezz_cafe_app/business_logic/zone/zone_bloc.dart';
import 'package:tezz_cafe_app/utils/route/ruotes.dart';
import 'package:tezz_cafe_app/utils/theme/app_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (context) => TabCubit()),
      BlocProvider(create: (context) => AuthBloc()),
      BlocProvider(create: (context) => ZoneBloc()),
      BlocProvider(create: (context) => TableBloc()),
      BlocProvider(create: (context) => NoActiveTableBloc()),
      BlocProvider(create: (context) => ProductBloc()),
      BlocProvider(create: (context) => CategoryBloc()),
      BlocProvider(create: (context) => OrderBloc()),
    ], child: const MainApp());
  }
}

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      navigatorKey: navigatorKey,
      onGenerateRoute: AppRoutes.generateRoute,

    );
  }
}
