import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tezz_cafe_app/business_logic/cubit/tab_cubit.dart';
import 'package:tezz_cafe_app/presentation/screens/clients_screen/widgets/client_pageview.dart';
import 'package:tezz_cafe_app/presentation/screens/clients_screen/widgets/clients_appbar.dart';
import 'package:tezz_cafe_app/utils/constants/colors.dart';

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
          onPressed: () {
            // context.pushNamed(RouteNames.menu);
            context.read<TabCubit>().changeMessageState(true);
          },
          child: const Icon(Icons.add,color: Colors.white,)),
      appBar: const ClientsAppBar(),
      body: const ClientsPageView(),
    );
  }
}








