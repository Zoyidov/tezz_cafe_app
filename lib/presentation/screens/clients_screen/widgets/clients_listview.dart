import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tezz_cafe_app/presentation/screens/clients_screen/widgets/clients_item_active.dart';

class ClientsListView extends StatelessWidget {
  const ClientsListView({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(20),
      itemBuilder: (context, index) {
        return const ClientListItemActive();
      },
      separatorBuilder: (context, index) => const Gap(12),
      itemCount: 3,
    );
  }
}

