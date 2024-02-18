import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:tezz_cafe_app/presentation/screens/call_screen/widgets/notification_container.dart';
import 'package:tezz_cafe_app/presentation/screens/new_order_screen/order_detail_screen/order_detail_screen.dart';


class NewOrderScreen extends StatelessWidget {
  const NewOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        title: const Text(
          "Faol Buyurtma",
          style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
      body: ListView.builder(
            shrinkWrap: true,
            itemCount: 3,
            itemBuilder: (context, index) {
              final stolNumber = index ;
              return NotificationContainer(
                type: 'Yangi buyurtma',
                place: 'STOL-$stolNumber',
                time: formatDate(DateTime.now(), [HH, ':', nn]),
                status: 'Ko\'rish',
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const OrderDetailScreen()));
                },
              );
            },
          ),
    );
  }
}
