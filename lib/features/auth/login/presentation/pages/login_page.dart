import 'package:color_funland/core/components/custom_text_field.dart';
import 'package:color_funland/core/components/elevated_btn.dart';
import 'package:color_funland/core/utils/app_colors.dart';
import 'package:color_funland/core/utils/text_styles.dart';
import 'package:color_funland/features/auth/login/presentation/widgets/password_text_field.dart';
import 'package:color_funland/features/auth/signup/presentation/pages/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/login_bg.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 34, bottom: 3, right: 310.91, left: 280),
              child: SingleChildScrollView(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  color: cWhiteColor,
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 78, vertical: 59),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Logo
                        SvgPicture.asset(
                          "assets/images/Logo.svg",
                          height: 128.h,
                        ),
                        const SizedBox(height: 20),

                        // Login Text
                        Text(
                          'Login',
                          style: ts48Black400,
                        ),
                        SizedBox(height: 24.h),

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
                              'Password',
                              style: ts18Purble700,
                            ),
                            SizedBox(height: 17.h),
                            const PasswordField(),
                          ],
                        ),
                        SizedBox(height: 17.h),
                        // Forget Password
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Forget Password?',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff64636F),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 24.h),
                        // Login Button
                        ElevatedBtn(
                          text: "Login",
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const SignUpScreen(isFirstPage: true)));
                          },
                          width: double.infinity,
                        ),

                        const SizedBox(height: 20),
                        // Sign Up Row
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Don't have account",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff64636F)),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const SignUpScreen(isFirstPage: true)));
                              },
                              child: const Text(
                                'Sign Up',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff6600DB),
                                ),
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
