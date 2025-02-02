import 'package:color_funland/core/utils/app_colors.dart';
import 'package:color_funland/features/auth/login/presentation/pages/login_page.dart';
import 'package:color_funland/features/auth/signup/presentation/pages/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ToggleButtonsScreen extends StatefulWidget {
  const ToggleButtonsScreen({super.key});

  @override
  _ToggleButtonsScreenState createState() => _ToggleButtonsScreenState();
}

class _ToggleButtonsScreenState extends State<ToggleButtonsScreen> {
  bool isLoginSelected = true;

  void _toggleSelection(bool isFirst) {
    setState(() {
      isLoginSelected = isFirst;
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  isLoginSelected ? const LoginScreen() : const SignUpScreen(isFirstPage: true,)));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () => _toggleSelection(false),
            style: ElevatedButton.styleFrom(
              backgroundColor:
                  isLoginSelected ? cWhiteColor : Colors.transparent,
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0.r)),
            ),
            child: Ink(
              decoration: BoxDecoration(
                image: isLoginSelected
                    ? null
                    : const DecorationImage(
                        image: AssetImage("assets/images/Button.png"),
                        fit: BoxFit.cover,
                      ),
                borderRadius: BorderRadius.circular(10.0.r),
              ),
              child: SizedBox(
                height: 48.h,
                width: 60.w,
                child: Center(
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      color: isLoginSelected ? cBlack2Color : cWhite2Color,
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 20), // Space between buttons

          ElevatedButton(
            onPressed: () => _toggleSelection(true),
            style: ElevatedButton.styleFrom(
              backgroundColor:
                  isLoginSelected ? Colors.transparent : cWhiteColor,
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0.r)),
            ),
            child: Ink(
              decoration: BoxDecoration(
                image: isLoginSelected
                    ? const DecorationImage(
                        image: AssetImage("assets/images/Button.png"),
                        fit: BoxFit.cover,
                      )
                    : null,
                borderRadius: BorderRadius.circular(10.0.r),
              ),
              child: SizedBox(
                height: 48.h,
                width: 60.w,
                child: Center(
                  child: Text(
                    "Log in",
                    style: TextStyle(
                      color: isLoginSelected ? cWhite2Color : cBlack2Color,
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
          ),

          // Second Button
        ],
      ),
    );
  }
}
