import 'package:flutter/material.dart';
import 'package:produuct_detail_app/route/app_route/app_route.dart';
import 'headers.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: AppRoute.routes,
      theme: ThemeData().copyWith(
        appBarTheme: const AppBarTheme(
          color: Color(0xff627254),
        ),
      ),
    );
  }
}
