import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

import 'package:tezz_cafe_app/data/activate_table/repository/activate_table_repository.dart';
import 'package:tezz_cafe_app/utils/di/service_locator.dart';
import 'package:tezz_cafe_app/utils/failures/failures.dart';

import '../../utils/di/service_locator.dart';

part 'activate_table_event.dart';

part 'activate_table_state.dart';

class ActivateTableBloc extends Bloc<ActivateTableEvent, ActivateTableState> {
  final ActivateTableRepository _activateTableRepository = getIt<ActivateTableRepository>();

  ActivateTableBloc() : super(const ActivateTableState()) {
    on<ActiveTableEvent>(_activateTable);
  }

  Future<void> _activateTable(ActiveTableEvent event, Emitter<ActivateTableState> emit) async {
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    final response = await _activateTableRepository.activateTable(event.tableId);
    response.fold(
      (l) => emit(state.copyWith(status: FormzSubmissionStatus.failure, failure: l)),
      (r) => emit(state.copyWith(status: FormzSubmissionStatus.success)),
    );
  }
}
