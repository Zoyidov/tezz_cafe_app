import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:tezz_cafe_app/business_logic/table/table_bloc.dart';
import 'package:tezz_cafe_app/business_logic/zone/zone_bloc.dart';
import 'package:tezz_cafe_app/data/table/models/table_model.dart';
import 'package:tezz_cafe_app/presentation/screens/clients_screen/widgets/clients_item_active.dart';

class ClientsListView extends StatelessWidget {
  const ClientsListView({super.key, required this.index, required this.tables});

  final int index;
  final List<TableModel> tables;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(20),
      itemBuilder: (context, index) {
        final table = tables[index];
        return  ClientListItemActive(table: table);
      },
      separatorBuilder: (context, index) => const Gap(12),
      itemCount: tables.length,
    );
  }
}

