import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../routers/my_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () async {
      SharedPreferences pref = await SharedPreferences.getInstance();
      Get.offAllNamed(MyRouter.onboarding);
      // if (pref.getString("cookie") != null) {
      //   //Get.offAllNamed(MyRouter.bottomnavbar);
      // } else {
      //   if (pref.getBool("shownIntro") == null)
      //   {
      //     Get.offAllNamed(MyRouter.onboarding);
      //   } else {
      //     Get.offAllNamed(MyRouter.loginScreen);
      //   }
      // }
    });
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: screenSize.width * 45,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: screenSize.width * 0.75,
          left: screenSize.width * 0.30,
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 10),
                height: screenSize.width * 0.40,
                width: screenSize.width * 0.40,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/logo.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                height: screenSize.width * 0.10,
                width: screenSize.width * 0.40,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/text.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
