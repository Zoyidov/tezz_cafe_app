import 'package:audio_session/audio_session.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:just_audio/just_audio.dart';
import 'package:socket_io_client/socket_io_client.dart';
import 'package:tezz_cafe_app/business_logic/cubit/tab_cubit.dart';
import 'package:tezz_cafe_app/business_logic/new_orders/new_orders_bloc.dart';
import 'package:tezz_cafe_app/business_logic/no_active_table/no_active_table_bloc.dart';
import 'package:tezz_cafe_app/business_logic/waiters/waiters_call_bloc.dart';
import 'package:tezz_cafe_app/data/waitress/models/call_model.dart';
import 'package:tezz_cafe_app/presentation/screens/call_screen/call_screen.dart';
import 'package:tezz_cafe_app/presentation/screens/clients_screen/clients_screen.dart';
import 'package:tezz_cafe_app/presentation/screens/inactive_tables/inactive_tables.dart';
import 'package:tezz_cafe_app/presentation/screens/new_order_screen/new_order_screen.dart';
import 'package:tezz_cafe_app/utils/constants/colors.dart';
import 'package:tezz_cafe_app/utils/constants/image_strings.dart';
import 'package:tezz_cafe_app/utils/local_storage/storage_keys.dart';
import 'package:tezz_cafe_app/utils/local_storage/storage_repository.dart';
import 'package:tezz_cafe_app/utils/services/sound_manager.dart';

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

    socket.on('categoryCreated', (data) => print("categoryCreated: $data"));

    socket.on('newActiveOrder', (data) => print("newActiveOrder: $data"));

    socket.on('noActiveOrder', (data) => print("noActiveOrder: $data"));

    socket.on('newTable', (data) => print("newTable: $data"));

    socket.on('closedTable', (data) => print("closedTable: $data"));

    socket.on('updateTable', (data) => print("updateTable: $data"));

    socket.on('deletedTable', (data) => print("deletedTable: $data"));

    socket.on(
      'callWaiter',
      (data) async {
        print("-----------------------------------");
        print("Waiter called: $data");
        final CallModel newCall = CallModel.fromJson(data);
        if (newCall.waiter == null ||
            newCall.waiter == StorageRepository.getString(StorageKeys.waiter)) {
          final soundManager = context.read<SoundManager>();
          final waiterBloc = context.read<WaitersCallBloc>();
          await soundManager.initAudio(audio: "sound");
          soundManager.play();
          waiterBloc.add(
            AddWaiterCall(call: newCall),
          );
        }
      },
    );

    socket.on('newTypeOfTable', (data) => print("newTypeOfTable: $data")); // ?

    socket.on(
        'updateTypeOfTable', (data) => print("updateTypeOfTable: $data")); // ?

    socket.on(
        'deleteTypeOfTable', (data) => print("deleteTypeOfTable: $data")); // ?

    socket.on('newProduct', (data) => print("newProduct: $data"));

    socket.on('updateProduct', (data) => print("updateProduct: $data"));

    socket.on('deleteProduct', (data) => print("deleteProduct: $data"));

    socket.on('tableOccupied', (data) {
      // ?
      print("tableOccupied: $data");
      final id = data['id'];
      context.read<NoActiveTableBloc>().add(RemoveNoActiveTableEvent(id));
      context.read<NewOrdersBloc>().add(FetchNewOrdersEvent());
    });

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
