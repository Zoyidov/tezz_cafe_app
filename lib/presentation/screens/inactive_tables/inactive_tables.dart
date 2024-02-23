import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tezz_cafe_app/business_logic/cubit/tab_cubit.dart';
import 'package:tezz_cafe_app/presentation/screens/inactive_tables/widgets/clients_appbar.dart';
import 'package:tezz_cafe_app/presentation/screens/inactive_tables/widgets/inactive_client_pageview.dart';
import 'package:tezz_cafe_app/utils/constants/colors.dart';

class InActiveTablesScreen extends StatefulWidget {
  const InActiveTablesScreen({super.key});

  @override
  State<InActiveTablesScreen> createState() => _InActiveTablesScreenState();
}

class _InActiveTablesScreenState extends State<InActiveTablesScreen> {
  @override
  Widget build(BuildContext context) {
    return   const Scaffold(
      appBar: ClientsAppBarNoActive(),
      body: InActiveClientsPageView(),
        // floatingActionButton: FloatingActionButton(
        //   backgroundColor: AppColors.primaryColor,
        //   onPressed: () => context.read<TabCubit>().flipCardController.toggleCard(),
        //   child: const Icon(Icons.add, color: Colors.white),
        // )
    );
  }
}








