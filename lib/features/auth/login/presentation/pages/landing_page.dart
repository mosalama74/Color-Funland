import 'package:color_funland/core/utils/text_styles.dart';
import 'package:color_funland/features/auth/login/presentation/widgets/signup_login_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 72, top: 7),
                        child: SvgPicture.asset(
                          "assets/images/Logo.svg",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 136),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Hello",
                                  style: ts82Purple400,
                                ),
                                Text(
                                  "all of Happy",
                                  style: ts82Black400,
                                ),
                                Text(
                                  "now.",
                                  style: ts82Black400,
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "Play, Learn, and Explore with",
                                  style: ts32Grey400,
                                ),
                                Text(
                                  "Exciting Games!.",
                                  style: ts32Grey400,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 40.h,
                            ),
                            const ToggleButtonsScreen(),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Image.asset("assets/images/landing_page_img.png"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
