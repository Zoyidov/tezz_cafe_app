import 'package:flutter/material.dart';
import 'package:tezz_cafe_app/presentation/screens/inactive_tables/inactive_tables.dart';
import 'package:tezz_cafe_app/presentation/screens/clients_screen/widgets/clients_appbar.dart';
import 'package:tezz_cafe_app/presentation/screens/clients_screen/widgets/client_pageview.dart';
import 'package:flip_card/flip_card.dart';

class ClientsScreen extends StatefulWidget {
  const ClientsScreen({Key? key}) : super(key: key);

  @override
  State<ClientsScreen> createState() => _ClientsScreenState();
}

class _ClientsScreenState extends State<ClientsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: ClientsAppBar(),
      body: ClientsPageView(),
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: AppColors.primaryColor,
      //   onPressed: () {
      //     Navigator.push(
      //       context,
      //       MaterialPageRoute(
      //         builder: (context) => InActiveTablesScreen(),
      //       ),
      //     );
      //   },
      //   child: const Icon(Icons.add, color: Colors.white),
      // ),
    );
  }
}

class FlipCardNavigation extends StatelessWidget {
  const FlipCardNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: FlipCard(
          direction: FlipDirection.HORIZONTAL,
          front: ClientsScreen(),
          back: InActiveTablesScreen(),
        ),
      ),
    );
  }
}