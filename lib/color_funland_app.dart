import 'package:color_funland/core/utils/app_colors.dart';
import 'package:color_funland/features/auth/login/presentation/pages/landing_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ColorFunLandApp extends StatelessWidget {
  const ColorFunLandApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1280, 800), // Standard tablet landscape design size
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Color FunLand',
          theme: ThemeData(
            fontFamily: "Lato",
            useMaterial3: true,
            scaffoldBackgroundColor: cWhiteColor,
            appBarTheme: AppBarTheme(
              backgroundColor: cWhiteColor,
              elevation: 0,
              systemOverlayStyle: const SystemUiOverlayStyle(
                statusBarColor: Colors.transparent,
                statusBarIconBrightness: Brightness.dark,
                 systemNavigationBarColor: Colors.transparent,  
                systemNavigationBarIconBrightness: Brightness.dark, 
              )
            )
          ),
          home: child,
        );
      },
      child: const LandingPage(), // or your initial screen
    );
  }
}
