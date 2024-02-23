part of 'no_active_table_bloc.dart';

abstract class NoActiveTableEvent {}

class FetchNoActiveTables extends NoActiveTableEvent{}

class ChangeNoActiveTableEvent extends NoActiveTableEvent {
  final int index;
  ChangeNoActiveTableEvent( this.index);
}
