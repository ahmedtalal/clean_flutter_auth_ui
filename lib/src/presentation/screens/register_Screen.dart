import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_registeration_ui/src/core/utils/app_colors.dart';
import 'package:flutter_registeration_ui/src/presentation/bloc/auth/auth_bloc.dart';
import 'package:flutter_registeration_ui/src/presentation/bloc/auth/auth_evetns.dart';
import 'package:flutter_registeration_ui/src/presentation/bloc/auth/auth_states.dart';
import 'package:flutter_registeration_ui/src/presentation/components/body_auth_section_comp.dart';
import '../components/logo_auth_section_comp.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);
  static Widget? loginSection;
  static Color? loginedColor;
  static Color? registeredColor;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: BlocBuilder<AuthBloc, AuthStates>(
                builder: (context, state) {
                  if (state is AuthInitialState) {
                    loginSection = state.getLoginSection();
                    loginedColor = AppColors.underlineColor;
                    registeredColor = AppColors.backgroundColor;
                  } else if (state is LoginState) {
                    loginSection = state.getLoginSection();
                    loginedColor = AppColors.underlineColor;
                    registeredColor = AppColors.backgroundColor;
                  } else if (state is RegisterState) {
                    loginSection = state.getRegisterSection();
                    loginedColor = AppColors.backgroundColor;
                    registeredColor = AppColors.underlineColor;
                  } else if (state is AuthErrorState) {
                    loginSection = state.loginError();
                    loginedColor = AppColors.underlineColor;
                    registeredColor = AppColors.backgroundColor;
                  }
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      LogoAuthSectionComp(
                        loginonPressed: () {
                          context.read<AuthBloc>().add(LoginEvent());
                        },
                        registeronPressed: () {
                          context.read<AuthBloc>().add(RegisterEvent());
                        },
                        loginedColor: loginedColor!,
                        registeredColor: registeredColor!,
                      ),
                      BodyAuthSectionComp(loginSection: loginSection),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
