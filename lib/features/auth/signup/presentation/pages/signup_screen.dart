import 'package:color_funland/core/components/elevated_btn.dart';
import 'package:color_funland/core/utils/app_colors.dart';
import 'package:color_funland/features/auth/login/presentation/pages/login_page.dart';
import 'package:color_funland/features/auth/signup/presentation/widgets/sign_up_first_body.dart';
import 'package:color_funland/features/auth/signup/presentation/widgets/sign_up_second_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key, required this.isFirstPage});
  final bool isFirstPage;

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late bool _isFirstPage = true;


  @override
  void initState() {
    super.initState();
    _isFirstPage = widget.isFirstPage;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/signup_bg.png"),
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

                        _isFirstPage ? const SignUpFirstBody() : const SignUpSecondBody(),
                        const SizedBox(height: 20),

                        // Next Button
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 90),
                          child: ElevatedBtn(
                            text: "Next",
                            onPressed: () {
                            _isFirstPage ?  setState(() {
                                _isFirstPage = false;
                              }) :setState(() {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
                              }); 

                            },
                            width: double.infinity,
                          ),
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
