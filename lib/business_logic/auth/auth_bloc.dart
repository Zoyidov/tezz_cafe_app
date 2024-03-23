import 'dart:async';

import 'package:flutter/material.dart';
import 'package:formz/formz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:tezz_cafe_app/data/auth/repository/auth_repository.dart';
import 'package:tezz_cafe_app/utils/device/device_utility.dart';
import 'package:tezz_cafe_app/utils/di/service_locator.dart';
import 'package:tezz_cafe_app/utils/failures/failures.dart';
import 'package:tezz_cafe_app/utils/local_storage/storage_keys.dart';
import 'package:tezz_cafe_app/utils/local_storage/storage_repository.dart';

part 'auth_event.dart';

part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final MaskTextInputFormatter formatter = MaskTextInputFormatter(
      mask: '+998 (##) ###-##-##', filter: {"#": RegExp('[0-9]')});
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late final TextEditingController phoneController;
  late final TextEditingController passwordController;
  final AuthRepository authRepository = getIt<AuthRepository>();

  AuthBloc() : super(const AuthState()) {
    phoneController = TextEditingController();
    passwordController = TextEditingController();
    on<ClearControllers>(_onClearControllersEvent);
    on<LoginEvent>(_onLoginEvent);
  }

  void _onClearControllersEvent(
    ClearControllers event,
    Emitter<AuthState> emit,
  ) async {
    phoneController.clear();
    passwordController.clear();
  }

  Future<void> _onLoginEvent(
    LoginEvent event,
    Emitter<AuthState> emit,
  ) async {
    if (!formKey.currentState!.validate()) {
      return;
    }
    if (!(await TDeviceUtils.hasInternetConnection())) {
      emit(
        state.copyWith(
          status: FormzSubmissionStatus.failure,
          failure: NoInternetFailure('No internet connection'),
        ),
      );
      return;
    }
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    final result = await authRepository.getToken(
      _formatPhoneNumber(phoneController.text),
      passwordController.text.trim(),
    );
    await result.fold(
      (l) async => emit(
        state.copyWith(status: FormzSubmissionStatus.failure, failure: l),
      ),
      (token) async {
        final waitress = await authRepository.getWaitress(token);
        waitress.fold(
          (failure) async => emit(
            state.copyWith(
              status: FormzSubmissionStatus.failure,
              failure: failure,
            ),
          ),
          (waiter) async {
            StorageRepository.putString(StorageKeys.token, token);
            debugPrint("----------------------Token----------------");
            debugPrint(token);
            StorageRepository.putString(
              StorageKeys.restaurant,
              waiter.restaurant,
            );
            StorageRepository.putString(StorageKeys.waiter, waiter.id);
            StorageRepository.putBool(StorageKeys.isAuth, true);
            StorageRepository.putObject(StorageKeys.waiterObject, waiter);
            emit(
              state.copyWith(status: FormzSubmissionStatus.success),
            );
          },
        );
      },
    );
  }

  String _formatPhoneNumber(String phoneNumber) {
    final regex = RegExp(r'(\d{0,3})(\d{0,3})(\d{0,2})(\d{0,2})');
    final matches = regex
        .allMatches(phoneNumber)
        .map((e) => "${e[1]}${e[2]}${e[3]}${e[4]}")
        .join();
    return '+$matches';
  }
}
