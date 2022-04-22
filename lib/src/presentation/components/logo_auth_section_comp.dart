import 'package:flutter/material.dart';

import '../../core/utils/app_colors.dart';
import '../../core/utils/constants.dart';
import '../../core/utils/screen_settings.dart';
import 'switch_auth_comp.dart';

class LogoAuthSectionComp extends StatelessWidget {
  final VoidCallback loginonPressed;
  final VoidCallback registeronPressed;
  final Color loginedColor;
  final Color registeredColor;
  const LogoAuthSectionComp({
    Key? key,
    required this.loginonPressed,
    required this.registeronPressed,
    required this.loginedColor,
    required this.registeredColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.center,
        color: AppColors.backgroundColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: ScreenSettings.setScreenWidth(context, 0.22),
              height: ScreenSettings.setScreenWidth(context, 0.22),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppColors.logoColor,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Image(
                height: ScreenSettings.setScreenHeight(context, 0.09),
                color: AppColors.whiteColor,
                fit: BoxFit.contain,
                width: ScreenSettings.setScreenWidth(context, 0.1),
                image: const AssetImage(Constants.xLogo),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SwitchAuthComp(
                  title: "Login",
                  onPressed: loginonPressed,
                  titleUnderlineColor: loginedColor,
                ),
                SwitchAuthComp(
                  title: "Register",
                  onPressed: registeronPressed,
                  titleUnderlineColor: registeredColor,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
