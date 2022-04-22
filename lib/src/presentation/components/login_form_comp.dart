import 'package:flutter/material.dart';
import 'package:flutter_registeration_ui/src/core/utils/app_colors.dart';
import 'package:flutter_registeration_ui/src/core/utils/constants.dart';
import 'package:flutter_registeration_ui/src/core/utils/screen_settings.dart';
import 'button_comp.dart';
import 'text_form_comp.dart';

class LoginFormComp extends StatelessWidget {
  const LoginFormComp({Key? key}) : super(key: key);
  static var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 15),
          const Text(
            "Welcome",
            style: TextStyle(
              fontSize: 30,
              fontFamily: Constants.appFont,
              fontWeight: FontWeight.bold,
              color: AppColors.whiteColor,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            "nice to see you again,if you have an account you can login from here",
            style: TextStyle(
              fontSize: 15,
              fontFamily: Constants.appFont,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 15),
          TextFormComp(
            hinttitle: 'Enter your email',
            labelTitle: 'Email',
            onChangeListener: (newValue) {},
            prefixIconData: Icons.email,
          ),
          const SizedBox(height: 15),
          TextFormComp(
            hinttitle: 'Enter your password',
            labelTitle: 'Password',
            onChangeListener: (newValue) {},
            prefixIconData: Icons.lock,
          ),
          Container(
            width: ScreenSettings.getFullWidth(),
            height: ScreenSettings.setScreenHeight(context, 0.045),
            alignment: Alignment.centerRight,
            child: InkWell(
              onTap: () {
                /// move ip forget password page here
              },
              child: const Text(
                "Forgot Password ?",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: Constants.appFont,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          const SizedBox(height: 18),
          ButtonComp(
            title: "Login",
            onClick: () {},
          )
        ],
      ),
    );
  }
}
