part of 'waiters_call_bloc.dart';

abstract class WaitersCallEvent {}

class FetchCallsEvent extends WaitersCallEvent {}

class UpdateCallBack extends WaitersCallEvent {
  final String tableId;
  final int index;

  UpdateCallBack({required this.tableId, required this.index});
}

class DeleteCallBack extends WaitersCallEvent {
  final String tableId;

  DeleteCallBack({required this.tableId});
}
