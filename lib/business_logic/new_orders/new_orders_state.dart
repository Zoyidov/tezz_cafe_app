part of 'new_orders_bloc.dart';

class NewOrdersState {
  final FormzSubmissionStatus status;
  final List<TableModelWaitress> tables;
  final Failure? failure;

  NewOrdersState({
    this.status = FormzSubmissionStatus.initial,
    this.tables = const [],
    this.failure,
  });

  NewOrdersState copyWith({
    FormzSubmissionStatus? status,
    List<TableModelWaitress>? tables,
    Failure? failure,
  }) {
    return NewOrdersState(
      status: status ?? this.status,
      tables: tables ?? this.tables,
      failure: failure ?? this.failure,
    );
  }
}
