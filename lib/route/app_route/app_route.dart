export 'package:flutter/cupertino.dart';
import 'package:produuct_detail_app/headers.dart';
import 'package:produuct_detail_app/view/screen/page/home_page/home_page.dart';
import 'package:produuct_detail_app/view/screen/page/inro_page1/intro_page1.dart';
import 'package:produuct_detail_app/view/screen/page/login_page/login_page.dart';
import 'package:produuct_detail_app/view/screen/page/singhup_page/singhup_page.dart';

class AppRoute {
  static const String splashscreen = "/";
  static const String intropage1 = "intro_page";
  static const String homepage = "home_page";
  static const String singhuppage = "singhup_page";
  static const String loginpage = "login_page";

  static Map<String, Widget Function(BuildContext)> routes = {
    splashscreen: (context) => const SplashScreen(),
    homepage: (context) => const HomePage(),
    intropage1: (context) => const IntroPage1(),
    singhuppage: (context) => const SinghupPage(),
    loginpage: (context) => const LoginPage(),
  };
}
