import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tezz_cafe_app/business_logic/cubit/tab_cubit.dart';
import 'package:tezz_cafe_app/presentation/screens/call_screen/call_screen.dart';
import 'package:tezz_cafe_app/presentation/screens/clients_screen/clients_screen.dart';
import 'package:tezz_cafe_app/presentation/screens/inactive_tables/inactive_tables.dart';
import 'package:tezz_cafe_app/presentation/screens/new_order_screen/new_order_screen.dart';
import 'package:tezz_cafe_app/utils/constants/image_strings.dart';

class TabBox extends StatefulWidget {
  const TabBox({super.key});

  @override
  TabBoxState createState() => TabBoxState();
}

class TabBoxState extends State<TabBox> {
  List<Widget> pages = [
    const CallScreen(),
    const NewOrderScreen(),
    const FlipCardNavigation(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<TabCubit, TabState>(
        builder: (context, state) {
          return IndexedStack(
            index: context.watch<TabCubit>().state.index,
            children: const [
              CallScreen(),
              NewOrderScreen(),
              // state.isActive ? const MessageNoActive() : const ClientsScreen(),
              ClientsScreen(),
              InActiveTablesScreen()
            ],
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: context.watch<TabCubit>().state.index,
        onTap: context.read<TabCubit>().changeTab,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(AppImages.Schaqiruv),
            icon: SvgPicture.asset(AppImages.chaqiruv),
            label: "Chaqiruv",
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(AppImages.Sbuyurtma),
            icon: SvgPicture.asset(AppImages.buyurtma),
            label: "Yangi Buyurtma",
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(AppImages.clientsFill),
            icon: SvgPicture.asset(AppImages.clients),
            label: "Mijozlar",
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(AppImages.clientsFill),
            icon: SvgPicture.asset(AppImages.clients),
            label: "Bo`sh Stollar",
          ),
        ],
      ),
    );
  }
}
