import 'package:flutter/material.dart';
import 'package:tezz_cafe_app/presentation/screens/inactive_tables/widgets/toggle_button.dart';

class ClientsAppBarNoActive extends StatelessWidget
    implements PreferredSizeWidget {
  const ClientsAppBarNoActive({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(title: const ToggleButtonsContainerNoActive());
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
