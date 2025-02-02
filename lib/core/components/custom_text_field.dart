import 'package:color_funland/core/utils/app_colors.dart';
import 'package:color_funland/core/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
     this.icon,
    this.keyboardType,
    this.isSuffixExist,
    this.controller,
  });
  final String? icon;
  final TextInputType? keyboardType;
  final bool? isSuffixExist;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType ?? TextInputType.text,
      style: textFieldTextStyle,
      decoration: InputDecoration(
        hintText: 'Type here',
        hintStyle: ts18Hint400,
        filled: true,
        fillColor: cTextFieldbg,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18.r),
          borderSide: BorderSide.none,
        ),
        suffixIcon: isSuffixExist == true
            ? Image.asset(
                icon!,
                width: 24.w,
                height: 24.h,
              )
            : null,
      ),
    );
  }
}
