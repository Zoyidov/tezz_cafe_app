part of 'order_bloc.dart';

abstract class OrderEvent {}

class CreateOrderEvent extends OrderEvent {
  final String tableId;
  final String productId;
  final int quantity;

  CreateOrderEvent({required this.tableId, required this.productId, required this.quantity});
}

class GetOrdersByTableId extends OrderEvent {
  final String tableId;
  GetOrdersByTableId({required this.tableId});
}