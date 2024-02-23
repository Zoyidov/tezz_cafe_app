part of 'no_active_table_bloc.dart';

class NoActiveTableState {
  final FormzSubmissionStatus status;
  final List<TableModel> tables;
  final Failure? failure;

  NoActiveTableState({
    this.status = FormzSubmissionStatus.initial,
    this.tables = const [],
    this.failure,
  });

  NoActiveTableState copyWith({
    FormzSubmissionStatus? status,
    List<TableModel>? tables,
    Failure? failure,
  }) {
    return NoActiveTableState(
      status: status ?? this.status,
      tables: tables ?? this.tables,
      failure: failure ?? this.failure,
    );
  }
}
