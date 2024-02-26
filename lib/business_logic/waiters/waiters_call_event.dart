part of 'waiters_call_bloc.dart';

abstract class WaitersCallEvent {}

class FetchCallsEvent extends WaitersCallEvent {}

class UpdateCallBack extends WaitersCallEvent {
  final String tableId;
  UpdateCallBack({required this.tableId});
}

class DeleteCallBack extends WaitersCallEvent {
  final String tableId;
  DeleteCallBack({required this.tableId});
}

