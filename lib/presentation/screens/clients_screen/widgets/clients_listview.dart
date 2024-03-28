import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:gap/gap.dart';
import 'package:tezz_cafe_app/business_logic/new_orders/new_orders_bloc.dart';
import 'package:tezz_cafe_app/business_logic/table/table_bloc.dart';
import 'package:tezz_cafe_app/business_logic/zone/zone_bloc.dart';
import 'package:tezz_cafe_app/presentation/screens/clients_screen/widgets/clients_item_active.dart';

class ClientsListView extends StatelessWidget {
  const ClientsListView({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewOrdersBloc, NewOrdersState>(
      builder: (context, state) {
        if (state.status.isFailure) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Xatolik yuz berdi: ${state.failure?.message ?? ''}',
                    textAlign: TextAlign.center),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () =>
                      context.read<TableBloc>().add(GetAllTablesEvent()),
                  child: const Text('Yangilash'),
                )
              ],
            ),
          );
        }
        final zones = context.read<ZoneBloc>().state.zones;
        final tables = state.tables
            .where((element) => element.typeOfTable.id == zones[index].id)
            .toList();
        return ListView.separated(
          padding: const EdgeInsets.all(20),
          itemBuilder: (context, index) {
            final table = tables[index];
            return ClientListItemActive(table: table);
          },
          separatorBuilder: (context, index) => const Gap(12),
          itemCount: tables.length,
        );
      },
    );
  }
}
