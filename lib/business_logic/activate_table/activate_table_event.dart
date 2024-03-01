import 'package:equatable/equatable.dart';

class ActivateTableEvent extends Equatable {
  final String tableId;

  const ActivateTableEvent(this.tableId);

  @override
  List<Object?> get props => [tableId];
}
