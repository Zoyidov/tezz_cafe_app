part of 'waiters_call_bloc.dart';

class WaitersCallState {
  final List<CallModel> calls;
  final FormzSubmissionStatus status;
  final Failure? failure;
  final List<bool> showRecievedContainers;
  final FormzSubmissionStatus updateStatus;
  final FormzSubmissionStatus deleteStatus;

  const WaitersCallState({
    this.calls = const [],
    this.status = FormzSubmissionStatus.initial,
    this.updateStatus = FormzSubmissionStatus.initial,
    this.deleteStatus = FormzSubmissionStatus.initial,
    this.failure,
    this.showRecievedContainers = const [],
  });

  WaitersCallState copyWith({
    List<CallModel>? calls,
    FormzSubmissionStatus? status,
    Failure? failure,
    List<bool>? showRecievedContainers,
    FormzSubmissionStatus? updateStatus,
    FormzSubmissionStatus? deleteStatus,
  }) {
    return WaitersCallState(
      calls: calls ?? this.calls,
      status: status ?? this.status,
      failure: failure ?? this.failure,
      showRecievedContainers:
          showRecievedContainers ?? this.showRecievedContainers,
      updateStatus: updateStatus ?? this.updateStatus,
      deleteStatus: deleteStatus ?? this.deleteStatus,
    );
  }
}
