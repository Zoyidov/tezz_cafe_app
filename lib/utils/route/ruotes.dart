import 'package:flutter/material.dart';
import 'package:tezz_cafe_app/presentation/screens/auth/login.dart';
import 'package:tezz_cafe_app/presentation/screens/splash/splash_screen.dart';
import 'package:tezz_cafe_app/tab_box/tab_box.dart';

class RouteNames {
  static const String splash = '/';
  static const String login = '/login';
  static const String home = '/home';
  static const String menu = '/menu';
  static const String category = '/category';
  static const String foodDetail = '/foodDetail';
  static const String place = '/place';

}

class AppRoutes {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.splash:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case RouteNames.login:
        return MaterialPageRoute(builder: (context) => const LoginScreen());
      case RouteNames.home:
        return MaterialPageRoute(builder: (context) => const TabBox());
      // case RouteNames.menu:
      //   return MaterialPageRoute(builder: (context) => const MenuScreen());
      // case RouteNames.category:
      //   return MaterialPageRoute(builder: (context) =>  ProductScreen(menuModel: settings.arguments as MenuModel,));
      // case RouteNames.foodDetail:
      //   return MaterialPageRoute(builder: (context) =>  FoodDetailScreen(product: settings.arguments as ProductModel,));
      // case RouteNames.place:
      //   return MaterialPageRoute(builder: (context) =>  PlaceScreen(table: settings.arguments as TableModel));
    }
    return MaterialPageRoute(builder: (context) => const Scaffold(body: Center(child: Text("Route not found"))));
  }
}
