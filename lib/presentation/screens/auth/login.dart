import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:gap/gap.dart';
import 'package:tezz_cafe_app/business_logic/auth/auth_bloc.dart';
import 'package:tezz_cafe_app/business_logic/new_orders/new_orders_bloc.dart';
import 'package:tezz_cafe_app/business_logic/no_active_table/no_active_table_bloc.dart';
import 'package:tezz_cafe_app/business_logic/table/table_bloc.dart';
import 'package:tezz_cafe_app/business_logic/waiters/waiters_call_bloc.dart';
import 'package:tezz_cafe_app/business_logic/zone/zone_bloc.dart';
import 'package:tezz_cafe_app/tab_box/tab_box.dart';
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
          // if (state.failure is NoInternetFailure){
          //   toastification.show(
          //     context: context,
          //     type: ToastificationType.error,
          //     style: ToastificationStyle.fillColored,
          //     title: const Text('Xatolik'),
          //     autoCloseDuration: const Duration(seconds: 5),
          //     alignment: Alignment.bottomCenter,
          //     description: Text(state.failure?.message ?? 'Xatolik'),
          //   );
          //   return;
          // }
          // context.pop();
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
        // if (state.status.isInProgress) {
        //   showDialog(
        //     barrierDismissible: true,
        //     context: context,
        //     builder: (context) => Center(child: CircularProgressIndicator(color: AppColors.primaryColor)),
        //   );
        // }
        if (state.status.isSuccess) {
          context.read<ZoneBloc>().add(GetAllZonesEvent());
          context.read<TableBloc>().add(GetAllTablesEvent());
          context.read<NewOrdersBloc>().add(FetchNewOrdersEvent());
          context.read<NoActiveTableBloc>().add(FetchNoActiveTables());
          context.read<WaitersCallBloc>().add(FetchCallsEvent());
          context.read<AuthBloc>().add(ClearControllers());
          context.pushAndRemoveUntil(const TabBox());
        }
      },
      child: Scaffold(
        appBar: AppBar(),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {
        //     print(StorageRepository.getString(StorageKeys.token));
        //     print(StorageRepository.getString(StorageKeys.waiter));
        //     print(StorageRepository.getString(StorageKeys.restaurant));
        //     print(StorageRepository.getBool(StorageKeys.isAuth));
        //   },
        // ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const LogoWidget(),
              const Gap(30),
              const LoginForm(),
              const Gap(24),
              BlocBuilder<AuthBloc, AuthState>(
                builder: (context, state) {
                  return state.status.isInProgress
                      ? const Center(
                          child: CircularProgressIndicator.adaptive())
                      : FilledButton(
                          onPressed: () {
                            context.read<AuthBloc>().add(LoginEvent());
                          },
                          // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const TabBox())),
                          child: const Text('Kirish'));
                },
              )
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
      decoration: const BoxDecoration(
          shape: BoxShape.circle, color: AppColors.mainColor),
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
        prefixIconConstraints: BoxConstraints(),
        hintText: "Phone number",
      ),
      validator: MultiValidator([
        RequiredValidator(errorText: 'Telefon raqamini kiriting'),
        MinLengthValidator(19,
            errorText: 'Telefon raqami uzunligini tekshiring')
      ]).call,
      inputFormatters: [context.read<AuthBloc>().formatter],
      textInputAction: TextInputAction.next,
    );
  }
}

class PasswordFormField extends StatefulWidget {
  const PasswordFormField({super.key});

  @override
  State<PasswordFormField> createState() => _PasswordFormFieldState();
}

class _PasswordFormFieldState extends State<PasswordFormField> {
  late ValueNotifier<bool> isVisible;

  @override
  void initState() {
    isVisible = ValueNotifier(false);
    super.initState();
  }

  @override
  void dispose() {
    isVisible.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return ValueListenableBuilder(
          valueListenable: isVisible,
          builder: (context, visibility, _) {
            return TextFormField(
              controller: context.read<AuthBloc>().passwordController,
              decoration: InputDecoration(
                prefixIcon: const PrefixIcon(icon: Icons.lock),
                prefixIconConstraints: const BoxConstraints(),
                hintText: "*********",
                suffixIcon: IconButton(
                  onPressed: () => isVisible.value = !isVisible.value,
                  icon: Icon(
                      visibility ? Icons.visibility_off : Icons.visibility),
                ),
              ),
              obscureText: !visibility,
              keyboardType: TextInputType.visiblePassword,
              textInputAction: TextInputAction.done,
              validator: AppValidators.validatePassword,
            );
          },
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
      decoration: const BoxDecoration(
          border: Border(right: BorderSide(color: Colors.grey))),
      child: Icon(icon),
    );
  }
}
