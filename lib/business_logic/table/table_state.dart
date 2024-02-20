part of 'table_bloc.dart';

 class TableState {
   final List<TableModel> tables;
   final FormzSubmissionStatus status;
   final Failure? failure;

   const TableState({
     this.tables = const [],
     this.status = FormzSubmissionStatus.initial,
     this.failure,
   });

   TableState copyWith({
    List<TableModel>? tables,
    FormzSubmissionStatus? status,
    Failure? failure,
  }) {
    return TableState(
      tables: tables ?? this.tables,
      status: status ?? this.status,
      failure: failure ?? this.failure,
    );
  }
}

