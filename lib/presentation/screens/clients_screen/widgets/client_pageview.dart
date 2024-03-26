import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:tezz_cafe_app/business_logic/new_orders/new_orders_bloc.dart';
import 'package:tezz_cafe_app/business_logic/table/table_bloc.dart';
import 'package:tezz_cafe_app/business_logic/zone/zone_bloc.dart';
import 'package:tezz_cafe_app/presentation/screens/clients_screen/widgets/clients_listview.dart';

class ClientsPageView extends StatefulWidget {
  const ClientsPageView({super.key});

  @override
  State<ClientsPageView> createState() => _ClientsPageViewState();
}

class _ClientsPageViewState extends State<ClientsPageView> {
  late final PageController _controller;
  @override
  void initState() {
    super.initState();
    _controller = context.read<TableBloc>().pageController;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ZoneBloc, ZoneState>(
      builder: (context, zone) {
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
            return RestorationScope(
              restorationId: 'client_page',
              child: PageView.builder(
                restorationId: "client_page",
                physics: const NeverScrollableScrollPhysics(),
                controller: _controller,
                itemCount: state.status.isInProgress ? 1 : zone.zones.length,
                itemBuilder: (context, index) {
                  final zones = zone.zones;
                  final filter = state.tables
                      .where(
                          (element) => element.typeOfTable.id == zones[index].id)
                      .toList();
                  return ClientsListView(index: index, tables: filter);
                },
              ),
            );
          },
        );
      },
    );
  }
}
