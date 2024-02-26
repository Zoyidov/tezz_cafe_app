import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:tezz_cafe_app/presentation/screens/call_screen/widgets/notification_container.dart';
import 'package:tezz_cafe_app/presentation/screens/call_screen/widgets/recieved_container.dart';
import '../../../business_logic/waiters/waiters_call_bloc.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({super.key});


  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  List<bool> showRecievedContainers = List.generate(10, (_) => false);


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
      body: BlocBuilder<WaitersCallBloc, WaitersCallState>(
        builder: (context, state) {
          if (state.status.isInProgress) {
            return const Center(child: CircularProgressIndicator());
          }  else if (state.status.isFailure) {
            return Center(
              child: Text('Failed to fetch calls: ${state.failure?.message}'),
            );
          } return ListView.builder(
            itemCount: state.calls.length,
            itemBuilder: (context, index) {
              if (index < state.calls.length) {
                final call = state.calls[index];
                return showRecievedContainers[index]
                    ? RecievedContainer(
                  type: 'Chaqiruv',
                  place: call.name,
                  status: 'Boryapman',
                  onTap: () {
                    setState(() {
                      context.read<WaitersCallBloc>().add(DeleteCallBack(tableId: call.id));
                    });
                  },
                )
                    : NotificationContainer(
                  type: 'Chaqiruv',
                  place: call.name,
                  time: "10:00",
                  status: 'Boryapman',
                  onTap: () {
                    setState(() {
                      context.read<WaitersCallBloc>().add(UpdateCallBack(tableId: call.id));
                      showRecievedContainers[index] = !showRecievedContainers[index];
                    });
                  },
                );
              } else {
                return const Center(child: Text("Not found"));
              }
            },
          );
        },
      ),
    );
  }
}


