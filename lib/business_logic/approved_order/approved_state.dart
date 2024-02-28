part of 'approved_bloc.dart';

 class ApprovedState {
   final FormzSubmissionStatus status;
   final Failure? failure;
   final OrderWaitressModel? order;
   const ApprovedState({
     this.status = FormzSubmissionStatus.initial,
     this.failure,
     this.order,
   });

   ApprovedState copyWith({
    FormzSubmissionStatus? status,
    Failure? failure,
    OrderWaitressModel? order,
  }) {
    return ApprovedState(
      status: status ?? this.status,
      failure: failure ?? this.failure,
      order: order ?? this.order,
    );
  }
}

