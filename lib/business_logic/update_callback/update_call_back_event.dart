part of 'update_call_back_bloc.dart';

abstract class UpdateCallBackEvent {}

class UpdateCallBack extends UpdateCallBackEvent {
  final String tableId;

  UpdateCallBack({required this.tableId});
}
