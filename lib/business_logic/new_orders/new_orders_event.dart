part of 'new_orders_bloc.dart';

abstract class NewOrdersEvent {
  const NewOrdersEvent();
}

class FetchNewOrdersEvent extends NewOrdersEvent {}

class AddNewOrdersEvent extends NewOrdersEvent {
  final TableModelWaitress newTable;

  const AddNewOrdersEvent(this.newTable);
}
