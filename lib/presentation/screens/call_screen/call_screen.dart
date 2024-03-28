import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:tezz_cafe_app/business_logic/zone/zone_bloc.dart';

// import 'package:tezz_cafe_app/business_logic/update_callback/update_call_back_bloc.dart';
import 'package:tezz_cafe_app/presentation/screens/call_screen/widgets/notification_container.dart';
import 'package:tezz_cafe_app/presentation/screens/call_screen/widgets/recieved_container.dart';
import 'package:tezz_cafe_app/utils/constants/colors.dart';
import 'package:toastification/toastification.dart';
import '../../../business_logic/waiters/waiters_call_bloc.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({super.key});

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<WaitersCallBloc, WaitersCallState>(
      listener: (context, state) {
        if (state.updateStatus.isFailure) {
          toastification.show(
            context: context,
            type: ToastificationType.error,
            style: ToastificationStyle.fillColored,
            title: const Text('Xatolik'),
            autoCloseDuration: const Duration(seconds: 5),
            alignment: Alignment.topCenter,
          );
        }
        if (state.deleteStatus.isFailure) {
          toastification.show(
            context: context,
            type: ToastificationType.error,
            style: ToastificationStyle.fillColored,
            title: const Text('Xatolik'),
            autoCloseDuration: const Duration(seconds: 5),
            alignment: Alignment.topCenter,
          );
        }
        if (state.updateStatus.isInProgress) {
          showDialog(
            barrierDismissible: true,
            context: context,
            builder: (context) => Center(
              child: CircularProgressIndicator(color: AppColors.primaryColor),
            ),
          );
        }
        if (state.updateStatus.isSuccess) {
          context.pop();
          // context.read<WaitersCallBloc>().add(FetchCallsEvent());
        }
      },
      child: Scaffold(
        appBar: AppBar(
          scrolledUnderElevation: 0,
          title: const Text(
            "Bosh sahifa",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ),
        body: BlocBuilder<ZoneBloc, ZoneState>(
          builder: (context, zoneBloc) {
            if (zoneBloc.status.isSuccess) {
              return BlocBuilder<WaitersCallBloc, WaitersCallState>(
                builder: (context, state) {
                  if (state.status.isInProgress) {
                    return const Center(
                      child: CircularProgressIndicator.adaptive(),
                    );
                  } else if (state.status.isFailure) {
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Failed to fetch calls: ${state.failure?.message}',
                            textAlign: TextAlign.center,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              context.read<WaitersCallBloc>().add(
                                    FetchCallsEvent(),
                                  );
                            },
                            child: const Text('Retry'),
                          )
                        ],
                      ),
                    );
                  }
                  return ListView.builder(
                    itemCount: state.calls.length,
                    itemBuilder: (context, index) {
                      if (index < state.calls.length) {
                        final call = state.calls[index];
                        final zone = zoneBloc.zones
                            .firstWhere((e) => e.id == call.typeOfTable);
                        return call.call == "accepted"
                            ? RecievedContainer(
                                zone: zone.name,
                                place: call.name ?? "Xatolik yuz berdi",
                                status: 'Boryapman',
                                time:
                                    call.updatedAt.toString().substring(11, 16),
                                onTap: () {
                                  setState(() {
                                    context.read<WaitersCallBloc>().add(
                                        DeleteCallBack(tableId: call.id ?? ""));
                                  });
                                },
                              )
                            : call.call == "calling"
                                ? NotificationContainer(
                                    isButton: call.waiter != null,
                                    zone: zone.name,
                                    type: 'Chaqiruv',
                                    place: call.name ?? "Xatolik yuz berdi",
                                    time: call.callTime
                                            ?.toUtc()
                                            .toLocal()
                                            .toString()
                                            .substring(11, 16) ??
                                        "00:00",
                                    status: 'Boryapman',
                                    onTap: () {
                                      context.read<WaitersCallBloc>().add(
                                            UpdateCallBack(
                                              tableId: call.id ?? "",
                                              index: index,
                                            ),
                                          );
                                    },
                                  )
                                : const Center(
                                    child: Text(
                                      "Chaqiruv mavjud emas",
                                      style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  );
                      } else {
                        return const Center(
                          child: Text("Not found"),
                        );
                      }
                    },
                  );
                },
              );
            } else {
              return const SizedBox();
            }
          },
        ),
      ),
    );
  }
}
