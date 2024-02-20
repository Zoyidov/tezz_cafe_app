import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tezz_cafe_app/business_logic/cubit/tab_cubit.dart';
import 'package:tezz_cafe_app/business_logic/table/table_bloc.dart';
import 'package:tezz_cafe_app/presentation/screens/auth/login.dart';
import 'package:tezz_cafe_app/presentation/screens/clients_screen/widgets/client_pageview.dart';
import 'package:tezz_cafe_app/presentation/screens/clients_screen/widgets/clients_appbar.dart';
import 'package:tezz_cafe_app/utils/constants/colors.dart';
import 'package:tezz_cafe_app/utils/local_storage/storage_keys.dart';
import 'package:tezz_cafe_app/utils/local_storage/storage_repository.dart';

class ClientsScreen extends StatefulWidget {
  const ClientsScreen({super.key});

  @override
  State<ClientsScreen> createState() => _ClientsScreenState();
}

class _ClientsScreenState extends State<ClientsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: AppColors.primaryColor,
          onPressed: () async {
            // context.pushNamed(RouteNames.menu);
            // context.read<TabCubit>().changeMessageState(true);
            // print(context.read<TableBloc>().state.tables);
            // print(StorageRepository.getString(StorageKeys.restaurant));
            // print(context.read<TableBloc>().state.tables.map((e) => e.activeOrders).toList());
            // print(context.read<TableBloc>().state.tables.map((e) => e.activeOrders).toList());

            // StorageRepository.delete(StorageKeys.isAuth);
            // context.pushAndRemoveUntil(const LoginScreen());
          },
          child: const Icon(
            Icons.add,
            color: Colors.white,
          )),
      appBar: const ClientsAppBar(),
      body: const ClientsPageView(),
    );
  }
}
