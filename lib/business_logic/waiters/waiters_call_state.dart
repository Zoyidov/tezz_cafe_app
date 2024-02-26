part of 'waiters_call_bloc.dart';

class WaitersCallState {
  final List<CallModel> calls;
  final FormzSubmissionStatus status;
  final Failure? failure;

  const WaitersCallState({
    this.calls = const [],
    this.status = FormzSubmissionStatus.initial,
    this.failure,
  });

  WaitersCallState copyWith({
    List<CallModel>? calls,
    FormzSubmissionStatus? status,
    Failure? failure,
  }) {
    return WaitersCallState(
      calls: calls ?? this.calls,
      status: status ?? this.status,
      failure: failure ?? this.failure,
    );
  }
}
