part of 'auth_bloc.dart';

class AuthState {
  final FormzSubmissionStatus status;
  final bool isVisible;
  final Failure? failure;

  const AuthState({
    this.status = FormzSubmissionStatus.initial,
    this.isVisible = true,
    this.failure,
  });

  AuthState copyWith({
    FormzSubmissionStatus? status,
    bool? isVisible,
    Failure? failure,
  }) {
    return AuthState(
      status: status ?? this.status,
      isVisible: isVisible ?? this.isVisible,
      failure: failure ?? this.failure,
    );
  }
}
