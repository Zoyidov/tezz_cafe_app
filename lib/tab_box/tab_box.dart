import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:socket_io_client/socket_io_client.dart';
import 'package:tezz_cafe_app/business_logic/cubit/tab_cubit.dart';
import 'package:tezz_cafe_app/business_logic/new_orders/new_orders_bloc.dart';
import 'package:tezz_cafe_app/business_logic/no_active_table/no_active_table_bloc.dart';
import 'package:tezz_cafe_app/presentation/screens/call_screen/call_screen.dart';
import 'package:tezz_cafe_app/presentation/screens/clients_screen/clients_screen.dart';
import 'package:tezz_cafe_app/presentation/screens/inactive_tables/inactive_tables.dart';
import 'package:tezz_cafe_app/presentation/screens/new_order_screen/new_order_screen.dart';
import 'package:tezz_cafe_app/utils/constants/colors.dart';
import 'package:tezz_cafe_app/utils/constants/image_strings.dart';
import 'package:tezz_cafe_app/utils/local_storage/storage_keys.dart';
import 'package:tezz_cafe_app/utils/local_storage/storage_repository.dart';

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
  void initState() {
    initSocket();
    super.initState();
  }

  void initSocket() {
    final token = StorageRepository.getString(StorageKeys.token);
    final socket = io(
      'https://tezzcafe.uz',
      <String, dynamic>{
        'transports': ['websocket'],
        'autoConnect': false,
        'query': {'token': token},
      },

    );

    socket.connect();
    socket.onConnect((_) {
      print('Connection established');
    });

    socket.on('callAccepted', (data) => print(data));
    socket.on('categoryCreated', (data) => print(data));
    socket.on('newActiveOrder', (data) => print(data));
    socket.on('noActiveOrder', (data) => print(data));
    socket.on('newTable', (data) => print(data));
    socket.on('closedTable', (data) => print(data));
    socket.on('updateTable', (data) => print(data));
    socket.on('deletedTable', (data) => print(data));
    socket.on('callWaiter', (data) => print(data));
    socket.on('newTypeOfTable', (data) => print(data));
    socket.on('updateTypeOfTable', (data) => print(data));
    socket.on('deleteTypeOfTable', (data) => print(data));
    socket.on('tableOccupied', (data) {
      print(data);
      final id = data['id'];
      context.read<NoActiveTableBloc>().add(RemoveNoActiveTableEvent(id));
      context.read<NewOrdersBloc>().add(FetchNewOrdersEvent());
    });
    socket.on('callAccepted', (data) => print(data));
    socket.onDisconnect((_) => print('Connection Disconnection'));
    socket.onConnectError((err) => print(err));
    socket.onError((err) => print(err));
  }

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
            activeIcon: Icon(
              Icons.table_restaurant_rounded,
              color: AppColors.primaryColor,
            ),
            icon: const Icon(Icons.table_restaurant_outlined),
            label: "Bo`sh Stollar",
          ),
        ],
      ),
    );
  }
}
