import 'dart:async';

import 'package:formz/formz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tezz_cafe_app/data/orders/repository/orders_repository.dart';
import 'package:tezz_cafe_app/utils/di/service_locator.dart';
import 'package:tezz_cafe_app/utils/failures/failures.dart';

part 'order_event.dart';

part 'order_state.dart';

class OrderBloc extends Bloc<OrderEvent, OrderState> {
  final OrderRepository _orderRepository = getIt<OrderRepository>();

  OrderBloc() : super(const OrderState()) {
    on<CreateOrderEvent>(_onCreateOrderEvent);
    on<GetOrdersByTableId>(_getOrdersByTableId);
  }

  FutureOr<void> _onCreateOrderEvent(CreateOrderEvent event, Emitter<OrderState> emit) async {
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    final order = await _orderRepository.createOrder(event.tableId, event.productId, event.quantity);
    order.fold(
      (l) => emit(state.copyWith(failure: l, status: FormzSubmissionStatus.failure)),
      (r) => emit(state.copyWith(status: FormzSubmissionStatus.success)),
    );
  }

  FutureOr<void> _getOrdersByTableId(GetOrdersByTableId event, Emitter<OrderState> emit) async {
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    final orders = await _orderRepository.getOrdersByTableId(event.tableId);
    orders.fold(
      (l) => emit(state.copyWith(failure: l, status: FormzSubmissionStatus.failure)),
      (r) => emit(state.copyWith(status: FormzSubmissionStatus.success)),
    );
  }
}
