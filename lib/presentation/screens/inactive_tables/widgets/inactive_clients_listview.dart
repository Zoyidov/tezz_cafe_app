import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tezz_cafe_app/data/table/models/table_model.dart';
import 'package:tezz_cafe_app/presentation/screens/inactive_tables/widgets/clients_item_inactive.dart';

class InActiveClientsListView extends StatelessWidget {
  const InActiveClientsListView(
      {super.key, required this.index, required this.tables});

  final int index;
  final List<TableModel> tables;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(20),
      itemBuilder: (context, index) {
        final table = tables[index];
        return ClientListItemInActive(table: table);
      },
      separatorBuilder: (context, index) => const Gap(12),
      itemCount: tables.length,
    );
  }
}
