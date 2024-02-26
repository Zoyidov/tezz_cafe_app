import 'dart:async';
import 'package:bloc/bloc.dart';
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
  }

  Future<void> _fetchCallsEvent(
      FetchCallsEvent event,
      Emitter<WaitersCallState> emit,
      ) async {
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    final calls = await _waitressRepository.getWaitressCalls();
    calls.fold(
          (failure) => emit(state.copyWith(status: FormzSubmissionStatus.failure, failure: failure)),
          (calls) => emit(state.copyWith(status: FormzSubmissionStatus.success, calls: calls)),
    );
  }

  Future<void> _updateCallBack(
      UpdateCallBack event,
      Emitter<WaitersCallState> emit,
      ) async {
    await _waitressRepository.updateCallBack(event.tableId);
  }

  Future<void> _deleteCallBack(
      DeleteCallBack event,
      Emitter<WaitersCallState> emit,
      ) async {
    await _waitressRepository.deleteCallBack(event.tableId);
  }
}
