import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../resource/app_theme.dart';
import '../../routers/my_router.dart';
import '../../widgets/add_text.dart';
import '../../widgets/common_button.dart';
import '../../widgets/dimentions.dart';

class ThankScreen extends StatelessWidget {
  const ThankScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var deviceWidth = AddSize.screenHeight;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: AddSize.screenHeight / 4),
          child: Center(
            child: Column(
              children: [
                Image.asset(
                  'assets/icons/thanks.png',
                  width: AddSize.size125,
                  height: AddSize.size125,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: AddSize.size30,
                ),
                AddText(
                  text: 'Thank You!',
                  color: AppTheme.filtter,
                  fontWeight: FontWeight.bold,
                  height: 1.5,
                  fontSize: AddSize.font10 * 3,
                ),
                addHeight(10),
                AddText(
                  text:
                      'Your Certificate has been downloaded \n                         successfully ',
                  color: AppTheme.filtter.withOpacity(.5),
                  fontWeight: FontWeight.w400,
                  height: 1.5,
                  fontSize: AddSize.font14,
                ),
                SizedBox(
                  height: AddSize.size30,
                ),
                Center(
                  child: CommonButton('Go To Home', () {
                    Get.toNamed(MyRouter.bottomNavbar); //thank you page
                  }, deviceWidth, expended: true, AddSize.size25),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
