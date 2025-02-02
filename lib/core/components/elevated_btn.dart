import 'package:color_funland/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ElevatedBtn extends StatelessWidget {
  const ElevatedBtn({
    super.key,
    required this.text,
    required this.onPressed,
    this.width,
    });


  final String text;
  final double? width;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor:  Colors.transparent, 
        padding: EdgeInsets.zero,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0.r)),
      ),
      child: Ink(
        decoration: BoxDecoration(
          image:  const DecorationImage(
                  image: AssetImage("assets/images/Button.png"),
                  fit: BoxFit.cover,
                ),
             
          borderRadius: BorderRadius.circular(10.0.r),
        ),
        child: SizedBox(
          height: 48.h,
          width: width ?? 60.w,
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color:  cWhite2Color ,
                fontSize: 17,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
