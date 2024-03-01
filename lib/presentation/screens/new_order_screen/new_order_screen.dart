import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:tezz_cafe_app/business_logic/approved_order/approved_bloc.dart';
import 'package:tezz_cafe_app/business_logic/new_orders/new_orders_bloc.dart';
import 'package:tezz_cafe_app/presentation/screens/auth/login.dart';
import 'package:tezz_cafe_app/presentation/screens/call_screen/widgets/notification_container.dart';
import 'package:tezz_cafe_app/presentation/screens/new_order_screen/order_detail_screen/order_detail_screen.dart';
import 'package:tezz_cafe_app/utils/local_storage/storage_keys.dart';
import '../../../utils/local_storage/storage_repository.dart';

class NewOrderScreen extends StatelessWidget {
  const NewOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                StorageRepository.clearAll();
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                    (route) => false);
              },
              icon: const Icon(
                Icons.logout_outlined,
                color: Colors.red,
              ))
        ],
        scrolledUnderElevation: 0,
        title: const Text(
          "Faol Buyurtma",
          style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
      body: BlocBuilder<NewOrdersBloc, NewOrdersState>(
        builder: (context, state) {
          if (state.status.isFailure) {
            return Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(state.failure?.message ?? 'Xatolik', textAlign: TextAlign.center),
                ElevatedButton(
                    onPressed: () => context.read<NewOrdersBloc>().add(FetchNewOrdersEvent()),
                    child: const Text('Qayta yuklash'))
              ],
            ));
          }
          if (state.status.isInProgress) {
            return const NewOrdersShimmer();

          }
          return ListView.builder(
            // shrinkWrap: true,
            itemCount: state.tables.length,
            itemBuilder: (context, index) {
              final table = state.tables[index];
              return NotificationContainer(
                type: 'Yangi buyurtma',
                place: table.name,
                time: formatDate(table.createdAt, [HH, ':', nn]),
                status: 'Ko\'rish',
                onTap: () {
                  context.read<ApprovedBloc>().add(FetchApprovedOrder(table.id));
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OrderDetailScreen(tableModelWaitress: table),
                      ),
                    );
                },
              );
            },
          );
        },
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     print(StorageRepository.getString(StorageKeys.restaurant));
      //     print(StorageRepository.getString(StorageKeys.token));
      //   },
      // ),
    );
  }
}

class NewOrdersShimmer extends StatelessWidget {
  const NewOrdersShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      child: ListView.builder(
        // shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index) {
          // final table = state.tables[index];
          // final stolNumber = index;
          return NotificationContainer(
            type: 'Yangi buyurtma',
            place: "table.name",
            time: formatDate(DateTime.now(), [HH, ':', nn]),
            status: 'Ko\'rish',
            onTap: () {
              // Navigator.push(context, MaterialPageRoute(builder: (context) => const OrderDetailScreen()));
            },
          );
        },
      ),
    );
  }
}
