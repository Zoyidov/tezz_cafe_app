import 'package:flutter/material.dart';
import 'package:tezz_cafe_app/presentation/screens/clients_screen/widgets/toggle_button.dart';

class ClientsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ClientsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(title: const ToggleButtonsContainer());
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
