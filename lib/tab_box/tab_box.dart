import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:socket_io_client/socket_io_client.dart';
import 'package:tezz_cafe_app/app.dart';
import 'package:tezz_cafe_app/business_logic/category/category_bloc.dart';
import 'package:tezz_cafe_app/business_logic/cubit/tab_cubit.dart';
import 'package:tezz_cafe_app/business_logic/new_orders/new_orders_bloc.dart';
import 'package:tezz_cafe_app/business_logic/no_active_table/no_active_table_bloc.dart';
import 'package:tezz_cafe_app/business_logic/table/table_bloc.dart';
import 'package:tezz_cafe_app/business_logic/waiters/waiters_call_bloc.dart';
import 'package:tezz_cafe_app/business_logic/zone/zone_bloc.dart';
import 'package:tezz_cafe_app/data/table/models/table_model.dart';
import 'package:tezz_cafe_app/data/waitress/models/call_model.dart';
import 'package:tezz_cafe_app/data/waitress/models/table_waitress/table_model_waitress.dart';
import 'package:tezz_cafe_app/presentation/screens/call_screen/call_screen.dart';
import 'package:tezz_cafe_app/presentation/screens/clients_screen/clients_screen.dart';
import 'package:tezz_cafe_app/presentation/screens/inactive_tables/inactive_tables.dart';
import 'package:tezz_cafe_app/presentation/screens/new_order_screen/new_order_screen.dart';
import 'package:tezz_cafe_app/utils/constants/colors.dart';
import 'package:tezz_cafe_app/utils/constants/image_strings.dart';
import 'package:tezz_cafe_app/utils/local_storage/storage_keys.dart';
import 'package:tezz_cafe_app/utils/local_storage/storage_repository.dart';
import 'package:tezz_cafe_app/utils/services/sound_manager.dart';
import 'package:tezz_cafe_app/utils/ui_utils/toast_service.dart';

class TabBox extends StatefulWidget {
  const TabBox({super.key});

  @override
  TabBoxState createState() => TabBoxState();
}

class TabBoxState extends State<TabBox> {
  @override
  void initState() {
    initSocket(navigatorKey.currentState!.context);
    super.initState();
  }

  void initSocket(BuildContext context) {
    final token = StorageRepository.getString(StorageKeys.token);
    final socket = io(
      'https://tezzcafe.uz',
      <String, dynamic>{
        'reconnection': true,
        'transports': ['websocket'],
        'autoConnect': true,
        'query': {'token': token},
      },
    );

    socket.connect();

    socket.onConnect((_) => debugPrint('Connection established'));

    socket.on(
      'categoryCreated',
      (data) => context.read<CategoryBloc>().add(FetchCategoriesEvent()),
    );

    socket.on(
      'newActiveOrder',
      (data) async {
        context.read<NewOrdersBloc>().add(FetchNewOrdersEvent());
        print(
            "${data['waiter']} == ${StorageRepository.getString(StorageKeys.waiter)}");
        if (data['waiter'] == StorageRepository.getString(StorageKeys.waiter)) {
          final soundManager = context.read<SoundManager>();
          await soundManager.playNewOrder();
        }
      },
    );

    socket.on(
      'noActiveOrder',
      (data) => context.read<NewOrdersBloc>().add(FetchNewOrdersEvent()),
    );

    socket.on(
      'newTable',
      (data) {
        context.read<TableBloc>().add(GetAllTablesEvent());
        final newTable =
            data['waiter'] != null ? Waiter.fromJson(data['waiter']) : null;
        if (newTable == null) {
          context.read<NoActiveTableBloc>().add(FetchNoActiveTables());
        } else if (newTable.id ==
            StorageRepository.getString(StorageKeys.waiter)) {
          final newModel = (data as Map).cast<String, dynamic>();
          newModel['waiter'] = newTable.id;
          final table = TableModelWaitress.fromJson(newModel);
          context.read<NewOrdersBloc>().add(AddNewOrdersEvent(table));
        } else {
          context.read<NewOrdersBloc>().add(FetchNewOrdersEvent());
        }
      },
    );

    socket.on(
      'closedTable',
      (data) {
        context.read<NoActiveTableBloc>().add(FetchNoActiveTables());
        context.read<NewOrdersBloc>().add(FetchNewOrdersEvent());
        context.read<TableBloc>().add(GetAllTablesEvent());
      },
    );

    socket.on('updateTable', (data) {
      context.read<NewOrdersBloc>().add(FetchNewOrdersEvent());
      context.read<NoActiveTableBloc>().add(FetchNoActiveTables());
      context.read<TableBloc>().add(GetAllTablesEvent());
    });

    socket.on('deletedTable', (data) {
      context.read<NoActiveTableBloc>().add(FetchNoActiveTables());
      context.read<NewOrdersBloc>().add(FetchNewOrdersEvent());
      context.read<TableBloc>().add(GetAllTablesEvent());
    });

    socket.on('callAccepted', (data) {
      context.read<WaitersCallBloc>().add(FetchCallsEvent());
    });

    socket.on('callDeclined', (data) {
      context.read<WaitersCallBloc>().add(FetchCallsEvent());
    });

    socket.on(
      'callWaiter',
      (data) async {
        print("callWaiter");
        final CallModel newCall = CallModel.fromJson(data);
        if (newCall.waiter != null &&
            newCall.waiter != StorageRepository.getString(StorageKeys.waiter)) {
          return;
        }
        context.read<WaitersCallBloc>().add(
              AddWaiterCall(call: newCall),
            );
        try {
          final soundManager = context.read<SoundManager>();
          await soundManager.playNewCall();
        } catch (e) {
          if (!context.mounted) return;
          ToastService.showErrorToast(
            context,
            e.toString(),
          );
        }
      },
    );

    socket.on(
      'newTypeOfTable',
      (data) => context.read<ZoneBloc>().add(GetAllZonesEvent()),
    );

    socket.on(
      'updateTypeOfTable',
      (data) => context.read<ZoneBloc>().add(GetAllZonesEvent()),
    );

    socket.on(
      'deleteTypeOfTable',
      (data) => context.read<ZoneBloc>().add(GetAllZonesEvent()),
    );

    socket.on('newProduct', (data) {
      context.read<CategoryBloc>().add(FetchCategoriesEvent());
    });

    socket.on('updateProduct', (data) {
      context.read<CategoryBloc>().add(FetchCategoriesEvent());
    });

    socket.on('deleteProduct', (data) {
      context.read<CategoryBloc>().add(FetchCategoriesEvent());
    });

    socket.on('tableOccupied', (data) {
      final id = data['id'];
      context.read<NoActiveTableBloc>().add(RemoveNoActiveTableEvent(id));
      context.read<NewOrdersBloc>().add(FetchNewOrdersEvent());
    });

    socket.onDisconnect((_) => debugPrint('Connection Disconnection'));
    socket.onConnectError((err) => debugPrint("Socket Connection Error: $err"));
    socket.onError((err) => debugPrint("Socket Error: $err"));
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
            activeIcon: SvgPicture.asset(AppImages.schaqiruv),
            icon: SvgPicture.asset(AppImages.chaqiruv),
            label: "Chaqiruv",
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(AppImages.sbuyurtma),
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
