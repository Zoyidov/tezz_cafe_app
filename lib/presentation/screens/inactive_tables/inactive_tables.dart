import 'package:flutter/material.dart';
import 'package:tezz_cafe_app/presentation/screens/auth/login.dart';
import 'package:tezz_cafe_app/presentation/screens/inactive_tables/widgets/clients_appbar.dart';
import 'package:tezz_cafe_app/presentation/screens/inactive_tables/widgets/inactive_client_pageview.dart';
import 'package:tezz_cafe_app/utils/constants/colors.dart';
import 'package:tezz_cafe_app/utils/local_storage/storage_repository.dart';

class InActiveTablesScreen extends StatefulWidget {
  const InActiveTablesScreen({super.key});

  @override
  State<InActiveTablesScreen> createState() => _InActiveTablesScreenState();
}

class _InActiveTablesScreenState extends State<InActiveTablesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ClientsAppBarNoActive(),
      body: const InActiveClientsPageView(),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 50),
        child: OutlinedButton(
            style: OutlinedButton.styleFrom(
                shape: const StadiumBorder(),
                side: const BorderSide(),
                backgroundColor: AppColors.primaryColor),
            onPressed: () {
              StorageRepository.clearAll();
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                  (route) => false);
            },
            child: const Text(
              'Logout',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.white),
            )),
      ),
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: AppColors.primaryColor,
      //   onPressed: () => context.read<TabCubit>().flipCardController.toggleCard(),
      //   child: const Icon(Icons.add, color: Colors.white),
      // )
    );
  }
}
