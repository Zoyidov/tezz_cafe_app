import 'package:flutter/material.dart';
import 'package:tezz_cafe_app/presentation/screens/clients_screen/widgets/toggle_button.dart';
import 'package:tezz_cafe_app/presentation/screens/inactive_tables/widgets/inactive_toggle_button.dart';

class ClientsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ClientsAppBar({super.key, this.isActive = false});

 final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AppBar(title: isActive ? const InActiveToggleButtonsContainer() : const ToggleButtonsContainer());
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
