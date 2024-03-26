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
      (calls) => emit(
        state.copyWith(
          status: FormzSubmissionStatus.success,
          calls: calls,
          showRecievedContainers: List.generate(calls.length, (index) => false),
        ),
      ),
    );
  }

  Future<void> _updateCallBack(
    UpdateCallBack event,
    Emitter<WaitersCallState> emit,
  ) async {
    emit(state.copyWith(updateStatus: FormzSubmissionStatus.inProgress));
    final result = await _waitressRepository.updateCallBack(event.tableId);
    await result.fold(
      (failure) {
        emit(
          state.copyWith(
            updateStatus: FormzSubmissionStatus.failure,
            failure: failure,
          ),
        );
      },
      (success) async {
        final calls = await _waitressRepository.getWaitressCalls();
        calls.fold((failure) {
          emit(
            state.copyWith(
              updateStatus: FormzSubmissionStatus.failure,
              failure: failure,
            ),
          );
        }, (calls) {
          emit(
            state.copyWith(
              updateStatus: FormzSubmissionStatus.success,
              calls: calls,
            ),
          );
          emit(state.copyWith(
            updateStatus: FormzSubmissionStatus.initial,
          ));
        });
      },
    );
  }

  Future<void> _deleteCallBack(
      DeleteCallBack event, Emitter<WaitersCallState> emit) async {
    emit(state.copyWith(deleteStatus: FormzSubmissionStatus.inProgress));
    final result = await _waitressRepository.deleteCallBack(event.tableId);
    result.fold(
      (failure) {
        emit(
          state.copyWith(
            deleteStatus: FormzSubmissionStatus.failure,
            failure: failure,
          ),
        );
        emit(state.copyWith(
          deleteStatus: FormzSubmissionStatus.initial,
        ));
      },
      (success) {
        final index = state.calls.indexWhere((e) => e.id == event.tableId);
        if (index.isNegative) return;
        final newCalls = state.calls.toList();
        final newRecievedContainers = state.showRecievedContainers.toList();
        newCalls.removeAt(index);
        newRecievedContainers.removeAt(index);
        emit(
          state.copyWith(
            deleteStatus: FormzSubmissionStatus.success,
            showRecievedContainers: newRecievedContainers,
            calls: newCalls,
          ),
        );
      },
    );
  }

  FutureOr<void> _addWaiterCall(
    AddWaiterCall event,
    Emitter<WaitersCallState> emit,
  ) {
    final index = state.calls.indexWhere((e) => e.id == event.call.id);
    final oldCalls = state.calls.toList();
    final oldContainers = state.showRecievedContainers.toList();
    if (!index.isNegative) {
      oldCalls.removeAt(index);
      oldContainers.removeAt(index);
    }
    emit(
      state.copyWith(
        calls: [event.call, ...oldCalls],
        showRecievedContainers: [false, ...oldContainers],
      ),
    );
  }
}
