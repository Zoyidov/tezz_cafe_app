import 'dart:async';

import 'package:formz/formz.dart';
import 'package:tezz_cafe_app/data/waitress/repository/waitress_repository.dart';
import 'package:tezz_cafe_app/utils/di/service_locator.dart';
import 'package:tezz_cafe_app/utils/failures/failures.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'update_call_back_event.dart';

part 'update_call_back_state.dart';

class UpdateCallBackBloc extends Bloc<UpdateCallBackEvent, UpdateCallBackState> {
  final WaitressRepository _orderRepository = getIt<WaitressRepository>();

  UpdateCallBackBloc() : super(const UpdateCallBackState()) {
    on<UpdateCallBack>(_onUpdateCallBack);
  }

  Future<void> _onUpdateCallBack(UpdateCallBack event, Emitter<UpdateCallBackState> emit) async {
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    final result = await _orderRepository.updateCallBack(event.tableId);
    result.fold(
      (failure) => emit(state.copyWith(status: FormzSubmissionStatus.failure, failure: failure)),
      (success) => emit(state.copyWith(status: FormzSubmissionStatus.success)),
    );
  }
}
