import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
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
        return RestorationScope(
          restorationId: 'client_page',
          child: PageView.builder(
            restorationId: "client_page",
            physics: const NeverScrollableScrollPhysics(),
            controller: _controller,
            itemCount: zone.status.isInProgress ? 1 : zone.zones.length,
            itemBuilder: (context, index) {
              return ClientsListView(index: index);
            },
          ),
        );
      },
    );
  }
}
