import 'package:erpl_learnpress/resource/app_theme.dart';
import 'package:erpl_learnpress/routers/my_router.dart';
import 'package:erpl_learnpress/screens/profile/edit_profile.dart';
import 'package:erpl_learnpress/screens/userflow/forgot_password/forgot_password_otp.dart';
import 'package:erpl_learnpress/screens/userflow/login_Screen.dart';
import 'package:erpl_learnpress/screens/userflow/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      darkTheme: ThemeData.light(),
      defaultTransition: Transition.rightToLeft,
      debugShowCheckedModeBanner: false,
      // initialRoute: "/splash",
      home: EditProfileScreen(),
      getPages: MyRouter.route,
      theme: ThemeData(
          fontFamily: 'Raleway',
          primaryColor: AppTheme.primaryColor,
          // highlightColor: AppTheme.primaryColor,
          scrollbarTheme: const ScrollbarThemeData().copyWith(
            thumbColor: MaterialStateProperty.all(AppTheme.primaryColor),
          ),
          colorScheme: ColorScheme.fromSwatch()
              .copyWith(secondary: AppTheme.primaryColor)),
    );
  }
}
