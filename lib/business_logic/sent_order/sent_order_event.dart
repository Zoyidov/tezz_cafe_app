part of 'sent_order_bloc.dart';

abstract class SentOrderEvent {}

class SentActiveOrdersEvent extends SentOrderEvent {
  final String tableId;
  final String activeOrderId;

  SentActiveOrdersEvent({required this.tableId, required this.activeOrderId});
}