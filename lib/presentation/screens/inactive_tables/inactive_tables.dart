import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tezz_cafe_app/business_logic/cubit/tab_cubit.dart';
import 'package:tezz_cafe_app/business_logic/table/table_bloc.dart';
import 'package:tezz_cafe_app/presentation/screens/auth/login.dart';
import 'package:tezz_cafe_app/presentation/screens/clients_screen/widgets/client_pageview.dart';
import 'package:tezz_cafe_app/presentation/screens/clients_screen/widgets/clients_appbar.dart';
import 'package:tezz_cafe_app/presentation/screens/inactive_tables/widgets/inactive_client_pageview.dart';
import 'package:tezz_cafe_app/utils/constants/colors.dart';
import 'package:tezz_cafe_app/utils/local_storage/storage_keys.dart';
import 'package:tezz_cafe_app/utils/local_storage/storage_repository.dart';

class InActiveTablesScreen extends StatefulWidget {
  const InActiveTablesScreen({super.key});

  @override
  State<InActiveTablesScreen> createState() => _InActiveTablesScreenState();
}

class _InActiveTablesScreenState extends State<InActiveTablesScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: ClientsAppBar(isActive: true,),
      body: InActiveClientsPageView(),
    );
  }
}








