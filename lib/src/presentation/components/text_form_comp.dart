import 'package:flutter/material.dart';
import '../../core/utils/app_colors.dart';
import '../../core/utils/constants.dart';

class TextFormComp extends StatelessWidget {
  final String? hinttitle, labelTitle;
  final Function(String?) onChangeListener;
  final IconData? prefixIconData;
  const TextFormComp({
    Key? key,
    required this.hinttitle,
    required this.labelTitle,
    required this.onChangeListener,
    required this.prefixIconData,
  }) : super(key: key);

  static bool? passwordObscure = true;
  static bool? passwordVisibilty = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      color: AppColors.backgroundColor,
      borderRadius: BorderRadius.circular(12),
      child: StatefulBuilder(
        builder: (context, setState) {
          return TextFormField(
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w400,
              fontFamily: Constants.appFont,
              color: AppColors.whiteColor,
            ),
            decoration: InputDecoration(
              fillColor: AppColors.backgroundColor,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(
                  color: AppColors.underlineColor,
                  width: 0.5,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(
                  color: AppColors.backgroundColor,
                  width: 0.5,
                ),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(
                  color: AppColors.backgroundColor,
                  width: 0.5,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(
                  color: Colors.red,
                  width: 0.6,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(
                  color: AppColors.backgroundColor,
                  width: 0.5,
                ),
              ),
              hintText: hinttitle!,
              hintStyle: const TextStyle(
                fontSize: 14,
                fontFamily: Constants.appFont,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
              label: Text(
                labelTitle!,
                style: const TextStyle(
                  fontSize: 14,
                  fontFamily: Constants.appFont,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
              prefixIcon: Icon(
                prefixIconData!,
                color: Colors.grey,
                size: 22,
              ),
              suffixIcon: labelTitle!.toLowerCase() == "password"
                  ? IconButton(
                      onPressed: () {
                        setState(() {
                          passwordObscure = !passwordObscure!;
                          passwordVisibilty = !passwordVisibilty!;
                        });
                      },
                      icon: Icon(
                        passwordVisibilty!
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Colors.grey,
                      ),
                    )
                  : null,
            ),
            obscureText: labelTitle!.toLowerCase() == "password"
                ? passwordObscure!
                : false,
            keyboardType: TextInputType.text,
            onChanged: onChangeListener,
          );
        },
      ),
    );
  }
}
