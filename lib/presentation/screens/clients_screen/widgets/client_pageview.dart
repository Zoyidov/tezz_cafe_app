import 'package:flutter/material.dart';
import 'package:tezz_cafe_app/presentation/screens/clients_screen/widgets/clients_listview.dart';

class ClientsPageView extends StatelessWidget {
  const ClientsPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 4,
      itemBuilder: (context, index) {
        return ClientsListView(index: index);
      },
    );
  }
}
