part of 'update_call_back_bloc.dart';

class UpdateCallBackState {
  final FormzSubmissionStatus status;
  final Failure? failure;

  const UpdateCallBackState({
    this.status = FormzSubmissionStatus.initial,
    this.failure,
  });

  UpdateCallBackState copyWith({
    FormzSubmissionStatus? status,
    Failure? failure,
  }) {
    return UpdateCallBackState(
      status: status ?? this.status,
      failure: failure ?? this.failure,
    );
  }
}
