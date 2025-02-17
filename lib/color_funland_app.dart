import 'package:color_funland/core/constants/app_strings.dart';
import 'package:color_funland/core/constants/app_theme.dart';
import 'package:color_funland/core/constants/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/services.dart';


class ColorFunLandApp extends StatelessWidget {
  const ColorFunLandApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);

    return ScreenUtilInit(
        designSize:
            const Size(1280, 800), // Standard tablet landscape design size
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: AppStrings.appName,
            theme: lightTheme,
            routes: routes,
          );
        });
  }
}
