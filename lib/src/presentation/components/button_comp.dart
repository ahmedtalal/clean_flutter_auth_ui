import 'package:flutter/material.dart';

import '../../core/utils/app_colors.dart';
import '../../core/utils/constants.dart';
import '../../core/utils/screen_settings.dart';

class ButtonComp extends StatelessWidget {
  final VoidCallback? onClick;
  final String? title;
  const ButtonComp({
    Key? key,
    required this.title,
    required this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: AppColors.backgroundColor,
          elevation: 3,
          fixedSize: Size(
            ScreenSettings.setScreenWidth(context, 0.85),
            ScreenSettings.setScreenHeight(context, 0.078),
          ),
        ),
        onPressed: onClick!,
        child: Text(
          title!,
          style: const TextStyle(
            fontSize: 22,
            fontFamily: Constants.appFont,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
