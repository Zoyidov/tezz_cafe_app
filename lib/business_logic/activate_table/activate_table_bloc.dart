import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tezz_cafe_app/data/activate_table/repository/activate_table_repository.dart';
import 'activate_table_event.dart';
import 'activate_table_state.dart';

class ActivateTableBloc extends Bloc<ActivateTableEvent, ActivateTableState> {
  final ActivateTableRepository activateTableRepository;

  ActivateTableBloc(this.activateTableRepository) : super(ActivateTableInitial());

  @override
  Stream<ActivateTableState> mapEventToState(ActivateTableEvent event) async* {
    if (event is ActivateTable) {
      yield ActivateTableLoading();
      try {
        await activateTableRepository.activateTable(event.tableId);
        yield  ActivateTableSuccess('Table activated successfully');
      } catch (e) {
        yield ActivateTableError('Failed to activate table: $e');
      }
    }
  }
}
