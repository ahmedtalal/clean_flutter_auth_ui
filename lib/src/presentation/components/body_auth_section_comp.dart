import 'package:flutter/material.dart';
import '../../core/utils/app_colors.dart';

class BodyAuthSectionComp extends StatelessWidget {
  const BodyAuthSectionComp({
    Key? key,
    required this.loginSection,
  }) : super(key: key);

  final Widget? loginSection;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: AppColors.bodySectionColor,
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        child: loginSection,
      ),
    );
  }
}
