import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/core/router/app_routes.dart';
import 'package:quiz_app/core/router/router_manager.dart';

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(414.w, 896.h),
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            fontFamily: GoogleFonts.montserrat().fontFamily,
          ),
          debugShowCheckedModeBanner: false,
          routes: RouterManager.mainAppRoutes,
          initialRoute: AppRoutes.splashView,
        );
      },
    );
  }
}
