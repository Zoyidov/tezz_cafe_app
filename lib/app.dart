import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tezz_cafe_app/business_logic/auth/auth_bloc.dart';
import 'package:tezz_cafe_app/business_logic/cubit/tab_cubit.dart';
import 'package:tezz_cafe_app/presentation/screens/auth/login.dart';
import 'package:tezz_cafe_app/utils/constants/colors.dart';
import 'package:tezz_cafe_app/utils/route/ruotes.dart';
import 'package:tezz_cafe_app/utils/theme/app_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (context) => TabCubit()),
      BlocProvider(create: (context) => AuthBloc()),
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
