import 'package:formz/formz.dart';
import 'package:tezz_cafe_app/utils/failures/failures.dart';

class ActivateTableState {
  final List<String> activate;
  final FormzSubmissionStatus status;
  final Failure? failure;

  const ActivateTableState({
    this.activate = const [],
    this.status = FormzSubmissionStatus.initial,
    this.failure,
  });

  ActivateTableState copyWith({
    List<String>? activate,
    FormzSubmissionStatus? status,
    Failure? failure,
  }) {
    return ActivateTableState(
      activate: activate ?? this.activate,
      status: status ?? this.status,
      failure: failure ?? this.failure,
    );
  }
}
