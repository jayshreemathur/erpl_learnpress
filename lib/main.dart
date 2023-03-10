// @dart=2.9
import 'package:erpl_learnpress/resource/app_theme.dart';
import 'package:erpl_learnpress/routers/my_router.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      darkTheme: ThemeData.light(),
      defaultTransition: Transition.rightToLeft,
      debugShowCheckedModeBanner: false,
      initialRoute: "/splash",
      //home: ForgotPasswordOtp(),
      getPages: MyRouter.route,
      theme: ThemeData(
          fontFamily: 'Poppins',
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
