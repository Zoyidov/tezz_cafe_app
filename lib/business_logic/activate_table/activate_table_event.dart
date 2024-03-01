part of 'activate_table_bloc.dart';

abstract class ActivateTableEvent {}

class ActiveTableEvent extends ActivateTableEvent {
  final String tableId;

  ActiveTableEvent(this.tableId);
}
