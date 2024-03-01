import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:tezz_cafe_app/business_logic/activate_table/activate_table_event.dart';
import 'package:tezz_cafe_app/business_logic/activate_table/activate_table_state.dart';
import 'package:tezz_cafe_app/data/activate_table/repository/activate_table_repository.dart';
import 'package:tezz_cafe_app/utils/failures/failures.dart';



class ActivateTableBloc extends Bloc<ActivateTableEvent, ActivateTableState> {
  final ActivateTableRepository _activateTableRepository;

  ActivateTableBloc(this._activateTableRepository) : super(const ActivateTableState()) {
    on<ActivateTableEvent>(_activateTable);
  }

  Future<void> _activateTable(ActivateTableEvent event, Emitter<ActivateTableState> emit) async {
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    try {
      await _activateTableRepository.activateTable(event.tableId);
      emit(state.copyWith(status: FormzSubmissionStatus.success));
    } catch (error) {
      emit(state.copyWith(status: FormzSubmissionStatus.failure, failure: Failure(error.toString())));
    }
  }
}

