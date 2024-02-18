import 'package:flutter/material.dart';
import 'package:tezz_cafe_app/presentation/screens/call_screen/widgets/notification_container.dart';
import 'package:tezz_cafe_app/presentation/screens/call_screen/widgets/recieved_container.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({super.key});

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  List<bool> showRecievedContainers = List.generate(5, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        title: const Text(
          "Bosh sahifa",
          style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
      body: ListView.builder(
        itemCount: 5,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          final stolNumber = index + 1;
          return showRecievedContainers[index]
              ? RecievedContainer(
            type: 'Chaqiruv',
            place: 'STOL-$stolNumber',
            status: 'Boryapman',
            onTap: () {
              setState(() {
                showRecievedContainers[index] = !showRecievedContainers[index];
              });
            },
          )
              : NotificationContainer(
            type: 'Chaqiruv',
            place: 'STOL-$stolNumber',
            time: '12:34',
            status: 'Boryapman',
            onTap: () {
              setState(() {
                showRecievedContainers[index] = !showRecievedContainers[index];
              });
            },
          );
        },
      ),
    );
  }
}
