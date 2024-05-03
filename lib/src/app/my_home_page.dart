import 'package:acadia/src/screens/forgot_password/forgot_password.dart';
import 'package:acadia/src/screens/splash/splash_screen.dart';
import 'package:acadia/src/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Acadia',
      theme: ThemeData(
        scaffoldBackgroundColor: ColorSchemeManagerClass.colorSecondary,
        appBarTheme: AppBarTheme(
            backgroundColor: ColorSchemeManagerClass.colorSecondary,
            iconTheme: IconThemeData(
              color: ColorSchemeManagerClass.colorPrimary,
            )),
        iconTheme: IconThemeData(
          color: ColorSchemeManagerClass.colorPrimary,
        ),
        fontFamily: GoogleFonts.inter().fontFamily,
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff4A007B)),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/splash': (_) => const SplashScreen(),
        '/forgotPassword': (_) => const ForgotPasswordPage(),
      },
      home: const SplashScreen(),
    );
  }
}
