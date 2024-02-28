part of 'approved_bloc.dart';

abstract class ApprovedEvent {}

class FetchApprovedOrder extends ApprovedEvent {
  final String tableId;

  FetchApprovedOrder(this.tableId);
}