import 'package:flutter/material.dart';
import 'package:flutter_registeration_ui/src/core/utils/constants.dart';
import '../../core/utils/app_colors.dart';
import '../../core/utils/screen_settings.dart';
import 'social_links_btn_comp.dart';

class BodyAuthSectionComp extends StatelessWidget {
  const BodyAuthSectionComp({
    Key? key,
    required this.loginSection,
  }) : super(key: key);

  final Widget? loginSection;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 6,
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: AppColors.bodySectionColor,
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        child: Column(
          children: [
            loginSection!,
            const SizedBox(height: 10),
            Container(
              height: ScreenSettings.setScreenHeight(context, 0.08),
              width: ScreenSettings.getFullWidth(),
              decoration: const BoxDecoration(
                border: BorderDirectional(
                  top: BorderSide(
                    color: Colors.grey,
                    width: 2,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialLinksBtn(
                    image: Constants.facebookImg,
                    onClickBtn: () {},
                  ),
                  SocialLinksBtn(
                    image: Constants.googleImg,
                    onClickBtn: () {},
                  ),
                  SocialLinksBtn(
                    image: Constants.twitterImg,
                    onClickBtn: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
