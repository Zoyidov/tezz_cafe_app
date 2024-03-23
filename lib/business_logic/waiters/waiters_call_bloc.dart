import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:tezz_cafe_app/data/waitress/models/call_model.dart';
import 'package:tezz_cafe_app/data/waitress/repository/waitress_repository.dart';
import 'package:tezz_cafe_app/utils/di/service_locator.dart';
import 'package:tezz_cafe_app/utils/failures/failures.dart';

part 'waiters_call_event.dart';

part 'waiters_call_state.dart';

class WaitersCallBloc extends Bloc<WaitersCallEvent, WaitersCallState> {
  final WaitressRepository _waitressRepository = getIt<WaitressRepository>();

  WaitersCallBloc() : super(const WaitersCallState()) {
    on<FetchCallsEvent>(_fetchCallsEvent);
    on<UpdateCallBack>(_updateCallBack);
    on<DeleteCallBack>(_deleteCallBack);
    on<AddWaiterCall>(_addWaiterCall);
  }

  Future<void> _fetchCallsEvent(
    FetchCallsEvent event,
    Emitter<WaitersCallState> emit,
  ) async {
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    final calls = await _waitressRepository.getWaitressCalls();
    calls.fold(
      (failure) => emit(state.copyWith(
          status: FormzSubmissionStatus.failure, failure: failure)),
      (calls) => emit(state.copyWith(
          status: FormzSubmissionStatus.success,
          calls: calls,
          showRecievedContainers:
              List.generate(calls.length, (index) => false))),
    );
  }

  Future<void> _updateCallBack(
      UpdateCallBack event, Emitter<WaitersCallState> emit) async {
    emit(state.copyWith(updateStatus: FormzSubmissionStatus.inProgress));
    final result = await _waitressRepository.updateCallBack(event.tableId);
    result.fold(
      (failure) => emit(state.copyWith(
          updateStatus: FormzSubmissionStatus.failure, failure: failure)),
      (success) {
        // update showRecievedContainers index value to true
        final newShowRecievedContainers =
            List<bool>.from(state.showRecievedContainers);
        newShowRecievedContainers[event.index] = true;
        emit(state.copyWith(
            updateStatus: FormzSubmissionStatus.success,
            showRecievedContainers: newShowRecievedContainers));
      },
    );
  }

  Future<void> _deleteCallBack(
      DeleteCallBack event, Emitter<WaitersCallState> emit) async {
    emit(state.copyWith(deleteStatus: FormzSubmissionStatus.inProgress));
    final result = await _waitressRepository.deleteCallBack(event.tableId);
    result.fold(
      (failure) => emit(state.copyWith(
          deleteStatus: FormzSubmissionStatus.failure, failure: failure)),
      (success) =>
          emit(state.copyWith(deleteStatus: FormzSubmissionStatus.success)),
    );
  }

  FutureOr<void> _addWaiterCall(
    AddWaiterCall event,
    Emitter<WaitersCallState> emit,
  ) {
    emit(
      state.copyWith(
        calls: [event.call, ...state.calls],
      ),
    );
  }
}
