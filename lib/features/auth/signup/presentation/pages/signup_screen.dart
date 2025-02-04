import 'package:color_funland/core/components/elevated_btn.dart';
import 'package:color_funland/core/constants/app_common_padding.dart';
import 'package:color_funland/core/constants/app_images.dart';
import 'package:color_funland/core/utils/app_colors.dart';
import 'package:color_funland/features/addProfileInfo/presentation/pages/addd_profile_info.dart';
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
          image: AssetImage("assets/images/gradient_bg.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: AppCommonPadding.screenOuterPadding,
              child: SingleChildScrollView(
                child: Card(
                  shape: RoundedRectangleBorder(

                    borderRadius: BorderRadius.circular(40.r),
                  ),
                  color: cWhiteColor,
                  elevation: 5,
                  child: Padding(
                    padding:  EdgeInsets.symmetric(
                        horizontal: 61.w, vertical: 15.62.h),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Logo
                        SvgPicture.asset(
                         AppImages.logo,
                          height: 128.h,
                        ),
                         SizedBox(height: 20.h),

                        _isFirstPage ? const SignUpFirstBody() : const SignUpSecondBody(),
                         SizedBox(height: 41.h),
                        // Next Button
                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 90.w),
                          child: ElevatedBtn(
                            text: "Next",
                            onPressed: () {
                            _isFirstPage ?  setState(() {
                                _isFirstPage = false;
                              }) :setState(() {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const AddProfileInfo()));
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
