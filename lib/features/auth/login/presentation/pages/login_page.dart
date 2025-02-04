import 'package:color_funland/core/components/custom_text_field.dart';
import 'package:color_funland/core/components/elevated_btn.dart';
import 'package:color_funland/core/constants/app_common_padding.dart';
import 'package:color_funland/core/constants/app_icons.dart';
import 'package:color_funland/core/constants/app_images.dart';
import 'package:color_funland/core/constants/app_strings.dart';
import 'package:color_funland/core/utils/app_colors.dart';
import 'package:color_funland/core/utils/text_styles.dart';
import 'package:color_funland/core/components/password_text_field.dart';
import 'package:color_funland/features/addProfileInfo/presentation/pages/forget_password_screen.dart';
import 'package:color_funland/features/auth/signup/presentation/pages/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.loginBg),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: AppCommonPadding.loginPagePadding,
              child: SingleChildScrollView(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.r),
                  ),
                  color: cWhiteColor,
                  elevation: 5,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 78.w, vertical: 59.h),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        // Logo
                        SvgPicture.asset(
                          AppImages.logo,
                          height: 128.h,
                        ),
                         SizedBox(height: 24.h),
            
                        // Login Text
                        Text(
                          AppStrings.login,
                          style: ts48Black400,
                        ),
                        SizedBox(height: 24.h),
            
                        // Username Field
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              AppStrings.username,
                              style: ts18Purble700,
                            ),
                            SizedBox(height: 17.h),
                            const CustomTextField(
                              icon: AppIcons.user,
                              isSuffixExist: true,
                            ),
                          ],
                        ),
                        SizedBox(height: 24.h),
            
                        // Password Field
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              AppStrings.password,
                              style: ts18Purble700,
                            ),
                            SizedBox(height: 17.h),
                            const PasswordField(),
                          ],
                        ),
                        // Forget Password
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ForgetPasswordScreen()));
                            },
                            child: Text(
                              AppStrings.forgetPassword,
                              style:ts16Grey700,
                            ),
                          ),
                        ),
                        SizedBox(height: 24.h),
                        // Login Button
                        ElevatedBtn(
                          text: AppStrings.login,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const SignUpScreen(isFirstPage: true)));
                          },
                          width: double.infinity,
                        ),
            
                         SizedBox(height: 24.h),
                        // Sign Up Row
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                             Text(
                              AppStrings.notHaveAccount,
                              style: ts16Grey700,
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const SignUpScreen(isFirstPage: true)));
                              },
                              child: Text(
                                AppStrings.signUp,
                                style: ts16Purple700,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
