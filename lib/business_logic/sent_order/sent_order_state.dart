part of 'sent_order_bloc.dart';

class SentOrderState {
  final FormzSubmissionStatus status;
  final Failure? failure;

  SentOrderState({
    this.status = FormzSubmissionStatus.initial,
    this.failure,
  });

  SentOrderState copyWith({
    FormzSubmissionStatus? status,
    Failure? failure,
  }) {
    return SentOrderState(
      status: status ?? this.status,
      failure: failure ?? this.failure,
    );
  }
}
