import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:tezz_cafe_app/business_logic/no_active_table/no_active_table_bloc.dart';
import 'package:tezz_cafe_app/business_logic/zone/zone_bloc.dart';
import 'package:tezz_cafe_app/presentation/screens/inactive_tables/widgets/inactive_clients_listview.dart';

class InActiveClientsPageView extends StatelessWidget {
  const InActiveClientsPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoActiveTableBloc, NoActiveTableState>(
      builder: (context, state) {
        return PageView.builder(
          physics: const NeverScrollableScrollPhysics(),
          controller: context.read<NoActiveTableBloc>().pageController,
          itemCount: state.status.isInProgress
              ? 1
              : context.watch<ZoneBloc>().state.zones.length,
          itemBuilder: (context, index) {
            final zones = context.watch<ZoneBloc>().state.zones;
            final filter = state.tables
                .where((element) => element.typeOfTable.id == zones[index].id)
                .toList();
            return InActiveClientsListView(index: index, tables: filter);
          },
        );
      },
    );
  }
}
