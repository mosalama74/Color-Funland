import 'package:color_funland/core/components/custom_text_field.dart';
import 'package:color_funland/core/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpFirstBody extends StatelessWidget {
  const SignUpFirstBody({super.key});

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

        Text(
          'Parent Information',
          style: ts18Black400,
        ),
        SizedBox(height: 20.h),

        // Username Field
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'First name',
              style: ts18Black700,
            ),
            SizedBox(height: 17.h),
            const CustomTextField(
              icon: "assets/icons/user.png",
            ),
          ],
        ),
        SizedBox(height: 21.h),

        //lastname Field
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Last name',
              style: ts18Black700,
            ),
            SizedBox(height: 17.h),
            const CustomTextField(
              icon: null,
            ),
          ],
        ),

        //email Field
        SizedBox(height: 21.h),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email',
              style: ts18Black700,
            ),
            SizedBox(height: 17.h),
            const CustomTextField(
              keyboardType: TextInputType.emailAddress,
            ),
          ],
        ),
         
      ],
    );
  }
}
