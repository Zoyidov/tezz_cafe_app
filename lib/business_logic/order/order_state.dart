part of 'order_bloc.dart';

class OrderState {
  final FormzSubmissionStatus status;
  final Failure? failure;

  const OrderState({
    this.status = FormzSubmissionStatus.initial,
    this.failure,
  });

  OrderState copyWith({
    FormzSubmissionStatus? status,
    Failure? failure,
  }) {
    return OrderState(
      status: status ?? this.status,
      failure: failure ?? this.failure,
    );
  }


}
