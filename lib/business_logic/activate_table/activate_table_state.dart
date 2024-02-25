abstract class ActivateTableState {
}

class ActivateTableInitial extends ActivateTableState {}

class ActivateTableLoading extends ActivateTableState {}

class ActivateTableSuccess extends ActivateTableState {
  final String message;

  ActivateTableSuccess(this.message);
}

class ActivateTableError extends ActivateTableState {
  final String errorMessage;

  ActivateTableError(this.errorMessage);
}