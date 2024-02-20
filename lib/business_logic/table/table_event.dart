part of 'table_bloc.dart';

abstract class TableEvent {}

class GetAllTablesEvent extends TableEvent {}

class ChangeTableEvent extends TableEvent {
  final int index;
  ChangeTableEvent( this.index);
}