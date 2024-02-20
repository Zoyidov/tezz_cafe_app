import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tezz_cafe_app/data/table/models/table_model.dart';
import 'package:tezz_cafe_app/presentation/screens/clients_screen/widgets/client_icon.dart';
import 'package:tezz_cafe_app/utils/constants/colors.dart';

class ClientListItemInActive extends StatelessWidget {
  const ClientListItemInActive({super.key, required this.table});

  final TableModel table;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AwesomeDialog(
          context: context,
          dialogType: DialogType.question,
          animType: AnimType.bottomSlide,
          title: "Stolni Faol qilish",
          desc: '${table.name} ni Faol qilmoqchimisiz?',
          btnCancelOnPress: () {},
          btnOkOnPress: () {},
          btnOkText: 'Faol qilish',
          btnCancelText: 'Bekor qilish',
        ).show();
      },
      child: Container(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors.textFieldColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClientIcon(table: table, isActive: false),
            const Gap(20),
          ],
        ),
      ),
    );
  }
}
