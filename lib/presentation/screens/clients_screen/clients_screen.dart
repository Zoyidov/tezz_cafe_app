import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tezz_cafe_app/business_logic/cubit/tab_cubit.dart';
import 'package:tezz_cafe_app/presentation/screens/inactive_tables/inactive_tables.dart';
import 'package:tezz_cafe_app/presentation/screens/clients_screen/widgets/clients_appbar.dart';
import 'package:tezz_cafe_app/presentation/screens/clients_screen/widgets/client_pageview.dart';
import 'package:flip_card/flip_card.dart';
import 'package:tezz_cafe_app/utils/constants/colors.dart';

class ClientsScreen extends StatefulWidget {
  const ClientsScreen({super.key});

  @override
  State<ClientsScreen> createState() => _ClientsScreenState();
}

class _ClientsScreenState extends State<ClientsScreen> {
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(

      appBar: ClientsAppBar(),
      body: ClientsPageView(),
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: AppColors.primaryColor,
      //   onPressed: () => context.read<TabCubit>().flipCardController.toggleCard(),
      //   child: const Icon(Icons.add, color: Colors.white),
      // ),
    );
  }
}

class FlipCardNavigation extends StatelessWidget {
  const FlipCardNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: FlipCard(
          controller: context.read<TabCubit>().flipCardController,
            front: const ClientsScreen(),
          back: const InActiveTablesScreen(),
        ),
      ),
    );
  }
}