import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:tezz_cafe_app/business_logic/approved_order/approved_bloc.dart';
import 'package:tezz_cafe_app/business_logic/sent_order/sent_order_bloc.dart';
import 'package:tezz_cafe_app/data/table/models/table_model.dart';
import 'package:tezz_cafe_app/data/waitress/models/table_waitress/table_model_waitress.dart';
import 'package:tezz_cafe_app/presentation/screens/widgets/order_container.dart';
import 'package:tezz_cafe_app/utils/constants/font_style.dart';
import 'package:tezz_cafe_app/utils/formatters/currency_formatter.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:tezz_cafe_app/utils/ui_utils/toast_service.dart';

class OrderDetailScreen extends StatelessWidget {
  const OrderDetailScreen({super.key, required this.tableModelWaitress});

  final TableModelWaitress tableModelWaitress;

  @override
  Widget build(BuildContext context) {
    return BlocListener<SentOrderBloc, SentOrderState>(
      listener: (context, state) {
        if (state.status.isFailure) {
          ToastService.showErrorToast(context, state.failure?.message ?? 'Xatolik');
        }
        if (state.status.isSuccess) {
          Navigator.pop(context);
          ToastService.showSuccessToast(context, 'Sizning buyurtmangiz qabul qilindi');
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(tableModelWaitress.name),
          actions: const [PriceTextBlocBuilder()],
        ),
        body: BlocBuilder<ApprovedBloc, ApprovedState>(
          builder: (context, state) {
            if (state.status.isInProgress) {
              return const Center(child: CircularProgressIndicator.adaptive());
            }
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
                  OrderListWidget(
                      products: state.order?.totalOrders?.products ?? [],
                      isActive: false,
                      tableModelWaitress: tableModelWaitress),
                  OrderListWidget(
                      products: state.order?.activeOrders?.products ?? [],
                      isActive: true,
                      tableModelWaitress: tableModelWaitress),
                ],
              ),
            );
          },
        ),
        bottomNavigationBar: BottomNavigationBarWidget(tableModelWaitress: tableModelWaitress),
      ),
    );
  }
}

class PriceText extends StatelessWidget {
  const PriceText({
    super.key,
    required this.price,
  });

  final int price;

  @override
  Widget build(BuildContext context) {
    return Text(
      currencyFormat.format(price),
      style: AppFontStyle.description2,
    );
  }
}

class OrderListWidget extends StatelessWidget {
  final List<ProductElement>? products;
  final bool isActive;
  final TableModelWaitress tableModelWaitress;

  const OrderListWidget({super.key, required this.products, required this.isActive, required this.tableModelWaitress});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      itemBuilder: (context, index) {
        final product = products?[index];
        return OrderContainer(
          time: formatDate(product?.product.createdAt ?? DateTime.now(), [HH, ':', nn]),
          foodName: product?.product.name ?? "",
          price: currencyFormat.format(product?.product.price ?? 0),
          count: "${product?.quantity.toString()} ta : ",
          countPrice: currencyFormat.format(product?.price ?? 0),
          image: product?.product.photo ?? "",
          onTap: () {
            context
                .read<ApprovedBloc>()
                .add(DeleteApprovedOrder(tableModelWaitress.id, product?.product.id ?? "", product?.quantity ?? 0));
          },
          isActive: isActive,
        );
      },
      itemCount: products?.length ?? 0,
      shrinkWrap: true,
    );
  }
}

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({super.key, required this.tableModelWaitress});

  final TableModelWaitress tableModelWaitress;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ApprovedBloc, ApprovedState>(
      builder: (context, state) {
        if (state.status.isSuccess) {
          return BlocBuilder<SentOrderBloc, SentOrderState>(
            builder: (context, stateSent) {
              return Container(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 25),
                child: FilledButton(
                  onPressed: stateSent.status.isInProgress ||
                          state.order?.activeOrders == null ||
                          (state.order?.activeOrders?.products ?? []).isEmpty
                      ? null
                      : () {
                          context.read<SentOrderBloc>().add(SentActiveOrdersEvent(
                              tableId: tableModelWaitress.id, activeOrderId: state.order?.activeOrders?.id ?? ""));
                        },
                  child: stateSent.status.isInProgress
                      ? const SizedBox(
                          height: 25,
                          width: 25,
                          child: CircularProgressIndicator.adaptive(),
                        )
                      : const Text(
                          "Buyurtma berish",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
                        ),
                ),
              );
            },
          );
        }
        return const SizedBox();
      },
    );
  }
}

class PriceTextBlocBuilder extends StatelessWidget {
  const PriceTextBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: BlocBuilder<ApprovedBloc, ApprovedState>(
        builder: (context, state) {
          final price = state.order?.totalOrders?.totalPrice ?? 0;
          return state.status.isInProgress
              ? const Skeletonizer(child: PriceText(price: 100000)) // Provide a default value or loading state
              : PriceText(price: price);
        },
      ),
    );
  }
}
