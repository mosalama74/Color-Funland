import 'package:color_funland/core/components/elevated_btn.dart';
import 'package:color_funland/core/utils/text_styles.dart';
import 'package:color_funland/features/addProfileInfo/presentation/widgets/add_photo_widget.dart';
import 'package:color_funland/features/auth/login/presentation/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class AddProfileInfo extends StatefulWidget {
  const AddProfileInfo({
    super.key,
  });

  @override
  State<AddProfileInfo> createState() => _AddProfileInfoState();
}

class _AddProfileInfoState extends State<AddProfileInfo> {
  bool _isFirstPage = true;
 


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
                  top: 64, bottom: 26, right: 337, left: 306),
              child: SingleChildScrollView(
                child: Container(
                  decoration:  BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                       _isFirstPage ? "assets/images/curvedBtmCardBg.png" : "assets/images/cardBg.png",
                      ),
                    ),
                  ),
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
                        SizedBox(height: 10.h),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text("Welcome", style: ts32Black400),
                            Text("Sarah", style: ts64Purple400),
                          ],
                        ),
                        SizedBox(height: 10.h),

                        const AddPhotoWidget(),

                        // Next Button
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 90),
                          child: ElevatedBtn(
                            text: _isFirstPage ? "Let’s Start" :"Save  and Login in",
                            onPressed: () {
                              _isFirstPage
                                  ? setState(() {
                                      _isFirstPage = false;
                                    })
                                  : setState(() {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const LoginScreen()));
                                    });
                            },
                            width: double.infinity,
                          ),
                        ),
                        SizedBox(height: 46.h),
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
