import 'package:flutter/material.dart';
import 'package:flutter_registeration_ui/src/core/utils/app_colors.dart';
import 'package:flutter_registeration_ui/src/presentation/components/login_form_comp.dart';
import 'package:flutter_registeration_ui/src/presentation/components/register_form_comp.dart';

abstract class AuthStates {
  const AuthStates();
}

class AuthInitialState extends AuthStates {
  const AuthInitialState();
  Widget getLoginSection() => const LoginFormComp();
}

class LoginState extends AuthStates {
  const LoginState();
  Widget getLoginSection() => const LoginFormComp();
}

class RegisterState extends AuthStates {
  const RegisterState();
  Widget getRegisterSection() => const RegisterFormComp();
}

class AuthErrorState extends AuthStates {
  const AuthErrorState();
  Widget loginError() => const CircularProgressIndicator(
        color: AppColors.backgroundColor,
        strokeWidth: 3,
        value: 5,
      );
}
