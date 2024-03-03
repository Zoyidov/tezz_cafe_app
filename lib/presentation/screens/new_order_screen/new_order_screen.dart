import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:tezz_cafe_app/business_logic/approved_order/approved_bloc.dart';
import 'package:tezz_cafe_app/business_logic/new_orders/new_orders_bloc.dart';
import 'package:tezz_cafe_app/presentation/screens/call_screen/widgets/notification_container.dart';
import 'package:tezz_cafe_app/presentation/screens/new_order_screen/order_detail_screen/order_detail_screen.dart';
import 'package:tezz_cafe_app/utils/constants/colors.dart';


class NewOrderScreen extends StatelessWidget {
  const NewOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // floatingActionButton: FloatingActionButton(onPressed: () async{
      //   // final response = await TableService(DioSettings.getDio()).getTablesByRestaurantId('65d652cec4485f20bdf5d897',true);
      // },),
      appBar: AppBar(
        backgroundColor: Colors.white,
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
            itemCount: state.tables.where((table) => table.hasActiveOrder).length,
            itemBuilder: (context, index) {
              final activeTables = state.tables.where((table) => table.hasActiveOrder).toList();

              activeTables.sort((a, b) => a.createdAt.compareTo(b.createdAt));

              final table = activeTables[index];

              return NotificationContainer(
                type: 'Yangi buyurtma',
                place: table.name,
                time: formatDate(table.createdAt, [HH, ':', nn]),
                status: 'Ko\'rish',
                color: AppColors.primaryColor,
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
