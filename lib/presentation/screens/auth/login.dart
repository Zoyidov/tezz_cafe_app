import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tezz_cafe_app/tab_box/tab_box.dart';
import 'package:tezz_cafe_app/utils/validators/validators.dart';

import '../../../utils/constants/colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 120,
              width: 120,
              alignment: Alignment.center,
              decoration: const BoxDecoration(shape: BoxShape.circle, color: AppColors.mainColor),
              child: const Text('Logo'),
            ),
            const Gap(30),
            Form(
              // key: context.read<AuthBloc>().formKey,
              child: Column(
                children: [
                TextFormField(
                keyboardType: TextInputType.number,
                maxLength: 13,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColors.textFieldColor,
                  prefixIcon: Container(
                    padding: const EdgeInsets.only(right: 10.0),
                    margin: const EdgeInsets.only(right: 10.0,left: 10),
                    decoration: const BoxDecoration(
                      border: Border(
                        right: BorderSide(color: Colors.grey),
                      ),
                    ),
                    child: const Icon(Icons.phone),
                  ),
                  prefixIconConstraints: const BoxConstraints(minWidth: 0, minHeight: 0),
                  hintText: "Phone number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: const BorderSide(color: Colors.black),
                  ),
                ),
                textInputAction: TextInputAction.next,
                validator: AppValidators.validateUsername,
              ),
                  const Gap(16),
                  TextFormField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: AppColors.textFieldColor,
                      prefixIcon: Container(
                        padding: const EdgeInsets.only(right: 10.0),
                        margin: const EdgeInsets.only(right: 10.0,left: 10),
                        decoration: const BoxDecoration(
                          border: Border(
                            right: BorderSide(color: Colors.grey),
                          ),
                        ),
                        child: const Icon(Icons.lock),
                      ),
                      prefixIconConstraints: const BoxConstraints(minWidth: 0, minHeight: 0),
                      hintText: "*********",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: const BorderSide(color: Colors.black),
                      ),
                        suffixIcon: IconButton(onPressed: () {}, icon: const Icon(Icons.visibility_off))
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    textInputAction: TextInputAction.done,
                    // obscureText: state.isVisible,
                    validator: AppValidators.validatePassword,
                  ),
                ],
              ),
            ),
            const Gap(24),
            FilledButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(AppColors.primaryColor),
                  foregroundColor: const MaterialStatePropertyAll(AppColors.white),
                  padding: const MaterialStatePropertyAll(EdgeInsets.all(12)),
                  shape: const MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  )),
                ),
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const TabBox()));
                },
                child: const Text('Kirish'))
          ],
        ),
      ),
    );
  }
}
