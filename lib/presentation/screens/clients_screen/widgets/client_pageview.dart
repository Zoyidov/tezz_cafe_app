import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:tezz_cafe_app/business_logic/new_orders/new_orders_bloc.dart';
import 'package:tezz_cafe_app/business_logic/table/table_bloc.dart';
import 'package:tezz_cafe_app/business_logic/zone/zone_bloc.dart';
import 'package:tezz_cafe_app/presentation/screens/clients_screen/widgets/clients_listview.dart';

class ClientsPageView extends StatelessWidget {
  const ClientsPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewOrdersBloc, NewOrdersState>(
      builder: (context, state) {
        print(state.status);
        print(state.tables);
        if (state.status.isFailure) {
          print('Error: ${state.failure?.message ?? ''}');
          return Center(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Xatolik yuz berdi: ${state.failure?.message ?? ''}', textAlign: TextAlign.center),
              const SizedBox(height: 20),
              ElevatedButton(onPressed: () => context.read<TableBloc>().add( GetAllTablesEvent()), child: const Text('Yangilash'))
            ],
          ));
        }

        return PageView.builder(
          physics: const NeverScrollableScrollPhysics(),
          controller: context.read<TableBloc>().pageController,
          itemCount: state.status.isInProgress ? 1 : context.watch<ZoneBloc>().state.zones.length,
          itemBuilder: (context, index) {
            final zones = context.watch<ZoneBloc>().state.zones;
            final filter = state.tables.where((element) => element.typeOfTable.id == zones[index].id).toList();
            return ClientsListView(index: index, tables: filter);
          },
        );
      },
    );
  }
}
