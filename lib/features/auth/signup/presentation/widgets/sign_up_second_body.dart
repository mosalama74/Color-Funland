import 'package:color_funland/core/components/custom_text_field.dart';
import 'package:color_funland/core/utils/text_styles.dart';
import 'package:color_funland/features/auth/login/presentation/widgets/password_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpSecondBody extends StatelessWidget {
  const SignUpSecondBody({super.key});


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Login Text
        Text(
          'Sign Up',
          style: ts48Black400,
        ),
        SizedBox(height: 20.h),

        SizedBox(height: 20.h),

        // Username Field
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Username',
              style: ts18Purble700,
            ),
            SizedBox(height: 17.h),
            const CustomTextField(
              icon: "assets/icons/user.png",
            ),
          ],
        ),
        SizedBox(height: 21.h),

        // Password Field
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Password',
              style: ts18Purble700,
            ),
            SizedBox(height: 17.h),
            const PasswordField(),
          ],
        ),
        SizedBox(height: 17.h),

        // Password Field
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Retype Password',
              style: ts18Purble700,
            ),
            SizedBox(height: 17.h),
            const PasswordField(),
          ],
        ),
        SizedBox(height: 20.h),
       
      
      ],
    );
  }
}
