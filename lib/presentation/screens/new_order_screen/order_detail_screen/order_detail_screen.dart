import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:tezz_cafe_app/business_logic/approved_order/approved_bloc.dart';
import 'package:tezz_cafe_app/data/waitress/models/table_waitress/table_model_waitress.dart';
import 'package:tezz_cafe_app/presentation/screens/widgets/order_container.dart';
import 'package:tezz_cafe_app/utils/constants/colors.dart';
import 'package:tezz_cafe_app/utils/constants/font_style.dart';

class OrderDetailScreen extends StatelessWidget {
  const OrderDetailScreen({super.key, required this.tableModelWaitress});

  final TableModelWaitress tableModelWaitress;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        title: Text(
          tableModelWaitress.name,
          style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Text("1 234 000 uzs", style: AppFontStyle.description2),
          )
        ],
      ),
      body: BlocBuilder<ApprovedBloc, ApprovedState>(
        builder: (context, state) {
          if (state.status.isFailure) {
            return Center(
                child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(state.failure?.message ?? 'Xatolik', textAlign: TextAlign.center),
              ElevatedButton(
                  onPressed: () => context.read<ApprovedBloc>().add(FetchApprovedOrder(tableModelWaitress.id)),
                  child: const Text('Qayta yuklash'))
            ]));
          }
          return SingleChildScrollView(
            child: Column(
              children: [
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  itemBuilder: (context, index) {
                    return OrderContainer(
                      time: "12:00",
                      foodName: "G’ijduvon shashlik Ajoyib shashlik",
                      price: "56 000 uzs",
                      count: "3 ta : ",
                      countPrice: "168 000 uzs",
                      image: "https://source.unsplash.com/800x533/?food",
                      onTap: () {},
                    );
                  },
                  itemCount: state.order?.totalOrders.products.length ?? 0,
                  shrinkWrap: true,
                ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  itemBuilder: (context, index) {
                    return OrderContainer(
                      time: "12:00",
                      foodName: "G’ijduvon shashlik Ajoyib shashlik",
                      price: "56 000 uzs",
                      count: "3 ta : ",
                      countPrice: "168 000 uzs",
                      image: "https://source.unsplash.com/800x533/?food",
                      onTap: () {},
                    );
                  },
                  itemCount: state.order?.activeOrders.products.length ?? 0,
                  shrinkWrap: true,
                ),
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(left: 20, right: 20, bottom: 25),
        height: 50,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          onPressed: () {},
          child: const Center(
            child: Text(
              "Buyurtma berish",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
