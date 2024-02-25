import 'package:equatable/equatable.dart';

abstract class ActivateTableEvent extends Equatable {
  const ActivateTableEvent();

  @override
  List<Object?> get props => [];
}

class ActivateTable extends ActivateTableEvent {
  final String tableId;

  const ActivateTable(this.tableId);

  @override
  List<Object?> get props => [tableId];
}
