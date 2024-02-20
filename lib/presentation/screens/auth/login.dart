import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:gap/gap.dart';
import 'package:tezz_cafe_app/business_logic/auth/auth_bloc.dart';
import 'package:tezz_cafe_app/tab_box/tab_box.dart';
import 'package:tezz_cafe_app/utils/failures/failures.dart';
import 'package:tezz_cafe_app/utils/local_storage/storage_keys.dart';
import 'package:tezz_cafe_app/utils/local_storage/storage_repository.dart';
import 'package:tezz_cafe_app/utils/route/ruotes.dart';
import 'package:tezz_cafe_app/utils/validators/validators.dart';
import 'package:tezz_cafe_app/utils/constants/colors.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:toastification/toastification.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state.status.isFailure) {
          if (state.failure is NoInternetFailure){
            toastification.show(
              context: context,
              type: ToastificationType.error,
              style: ToastificationStyle.fillColored,
              title: const Text('Xatolik'),
              autoCloseDuration: const Duration(seconds: 5),
              alignment: Alignment.bottomCenter,
              description: Text(state.failure?.message ?? 'Xatolik'),
            );
            return;
          }
          context.pop();
          toastification.show(
            context: context,
            type: ToastificationType.error,
            style: ToastificationStyle.fillColored,
            title: const Text('Xatolik'),
            autoCloseDuration: const Duration(seconds: 5),
            alignment: Alignment.bottomCenter,
            description: Text(state.failure?.message ?? 'Xatolik'),
          );
        }
        if (state.status.isInProgress) {
          showDialog(
            barrierDismissible: true,
            context: context,
            builder: (context) => Center(child: CircularProgressIndicator(color: AppColors.primaryColor)),
          );
        }
        if (state.status.isSuccess) {
          context.pushAndRemoveUntil(const TabBox());
        }
      },
      child: Scaffold(
        appBar: AppBar(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print(StorageRepository.getString(StorageKeys.token));
            print(StorageRepository.getString(StorageKeys.waiter));
            print(StorageRepository.getString(StorageKeys.restaurant));
            print(StorageRepository.getBool(StorageKeys.isAuth));
          },
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const LogoWidget(),
              const Gap(30),
              const LoginForm(),
              const Gap(24),
              FilledButton(
                  onPressed: () {
                    context.read<AuthBloc>().add(LoginEvent());
                  },
                  // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const TabBox())),
                  child: const Text('Kirish'))
            ],
          ),
        ),
      ),
    );
  }
}

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 120,
      alignment: Alignment.center,
      decoration: const BoxDecoration(shape: BoxShape.circle, color: AppColors.mainColor),
      child: const Text('Logo'),
    );
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<AuthBloc>().formKey,
      child: const Column(
        children: [
          PhoneNumberFormField(),
          Gap(16),
          PasswordFormField(),
        ],
      ),
    );
  }
}

class PhoneNumberFormField extends StatelessWidget {
  const PhoneNumberFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.number,
      controller: context.read<AuthBloc>().phoneController,
      decoration: const InputDecoration(
        prefixIcon: PrefixIcon(icon: Icons.phone),
        prefixIconConstraints: BoxConstraints(minWidth: 0, minHeight: 0),
        hintText: "Phone number",
      ),
      validator: MultiValidator([
        RequiredValidator(errorText: 'Telefon raqamini kiriting'),
        MinLengthValidator(19, errorText: 'Telefon raqami uzunligini tekshiring')
      ]).call,
      inputFormatters: [context.read<AuthBloc>().formatter],
      textInputAction: TextInputAction.next,
    );
  }
}

class PasswordFormField extends StatelessWidget {
  const PasswordFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return TextFormField(
          controller: context.read<AuthBloc>().passwordController,
          decoration: InputDecoration(
            prefixIcon: const PrefixIcon(icon: Icons.lock),
            prefixIconConstraints: const BoxConstraints(minWidth: 0, minHeight: 0),
            hintText: "*********",
            suffixIcon: IconButton(
                onPressed: () => context.read<AuthBloc>().add(ChangePasswordVisibility()),
                icon: Icon(state.isVisible ? Icons.visibility_off : Icons.visibility)),
          ),
          obscureText: state.isVisible,
          keyboardType: TextInputType.visiblePassword,
          textInputAction: TextInputAction.done,
          validator: AppValidators.validatePassword,
        );
      },
    );
  }
}

class PrefixIcon extends StatelessWidget {
  final IconData icon;

  const PrefixIcon({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 10.0),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: const BoxDecoration(border: Border(right: BorderSide(color: Colors.grey))),
      child: Icon(icon),
    );
  }
}
