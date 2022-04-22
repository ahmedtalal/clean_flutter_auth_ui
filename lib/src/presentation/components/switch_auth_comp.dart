import 'package:flutter/material.dart';
import 'package:flutter_registeration_ui/src/core/utils/screen_settings.dart';
import '../../core/utils/app_colors.dart';
import '../../core/utils/constants.dart';

class SwitchAuthComp extends StatelessWidget {
  final String? title;
  final VoidCallback onPressed;
  final Color titleUnderlineColor;
  const SwitchAuthComp({
    Key? key,
    required this.title,
    required this.onPressed,
    required this.titleUnderlineColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: InkWell(
        onTap: onPressed,
        child: SizedBox(
          height: ScreenSettings.setScreenHeight(context, 0.05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                title!,
                style: const TextStyle(
                  fontFamily: Constants.appFont,
                  fontSize: 18,
                  color: AppColors.whiteColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 3),
              Container(
                width: double.infinity,
                height: 3,
                decoration: BoxDecoration(
                  color: titleUnderlineColor,
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
