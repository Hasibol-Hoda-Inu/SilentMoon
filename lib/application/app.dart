import 'package:flutter/material.dart';
import 'package:silent_moon/presentation/ui/screens/splash_screen.dart';
import 'package:silent_moon/presentation/ui/utility/app_color.dart';

import '../presentation/ui/screens/auth/sign_up_screen.dart';

class SilentMoon extends StatelessWidget {
  const SilentMoon({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SplashScreen(),
      theme: ThemeData(
        primarySwatch: MaterialColor(AppColors.primaryColor.value, AppColors().color),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primaryColor,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 23),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(38))
          )
        )
      ),
    );
  }
}
