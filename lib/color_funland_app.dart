import 'package:color_funland/features/auth/login/presentation/pages/landing_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ColorFunlandApp extends StatelessWidget {
  const ColorFunlandApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: "Lato",
            useMaterial3: true,
          ),
          home: const LandingPage(),
        );
      },
    );
  }
}
