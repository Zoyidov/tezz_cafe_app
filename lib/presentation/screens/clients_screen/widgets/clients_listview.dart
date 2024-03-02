import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tezz_cafe_app/data/waitress/models/table_waitress/table_model_waitress.dart';
import 'package:tezz_cafe_app/presentation/screens/clients_screen/widgets/clients_item_active.dart';

class ClientsListView extends StatelessWidget {
  const ClientsListView({super.key, required this.index, required this.tables});

  final int index;
  final List<TableModelWaitress> tables;
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

