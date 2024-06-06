import 'package:flutter/material.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';
import 'package:produuct_detail_app/headers.dart';

import '../../../../route/app_route/app_route.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("HOME PAGE"),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://i.pinimg.com/564x/fc/05/4d/fc054da3a8f2d896bdc5f280e9eee839.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: GlassContainer(
          height: size.height * 0.3,
          blur: 20,
          child: const CupertinoActivityIndicator(),
        ),
      ),
    );
  }
}
