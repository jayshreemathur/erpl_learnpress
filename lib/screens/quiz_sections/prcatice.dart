import 'package:erpl_learnpress/widgets/add_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../resource/app_theme.dart';
import '../../routers/my_router.dart';
import '../../widgets/common_appbar.dart';
import '../../widgets/common_button.dart';
import '../../widgets/common_button3.dart';
import '../../widgets/dimentions.dart';

class PracticalTest extends StatefulWidget {
  const PracticalTest({Key? key}) : super(key: key);

  @override
  State<PracticalTest> createState() => _PracticalTestState();
}

class _PracticalTestState extends State<PracticalTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AddSize.size100 * .82),
        child: CustomAppbar(
          titleText: 'Practical Test',
          isLikeButton: false,
          isProfileImage: false,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AddSize.padding16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AddText(
                text: 'Test : Basic Wordpress',
                textAlign: TextAlign.start,
                color: AppTheme.filtter,
                fontWeight: FontWeight.w600,
                fontSize: AddSize.font20,
              ),
              addHeight(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.watch_later_outlined,
                        size: AddSize.size20,
                        color: AppTheme.primaryColor,
                      ),
                      SizedBox(
                        width: AddSize.size10,
                      ),
                      AddText(
                        text: '15 mins',
                        textAlign: TextAlign.start,
                        color: AppTheme.userText.withOpacity(.5),
                        fontWeight: FontWeight.w500,
                        fontSize: AddSize.font14,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/que.png',
                        width: AddSize.size20,
                        height: AddSize.size20,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(
                        width: AddSize.size10,
                      ),
                      AddText(
                        text: 'Question: 05',
                        textAlign: TextAlign.start,
                        color: AppTheme.userText.withOpacity(.5),
                        fontWeight: FontWeight.w500,
                        fontSize: AddSize.font14,
                      ),
                    ],
                  ),
                ],
              ),
              addHeight(20),
              Row(
                children: [
                  Image.asset(
                    'assets/icons/grade.png',
                    width: AddSize.size22,
                    height: AddSize.size22,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(
                    width: AddSize.size10,
                  ),
                  AddText(
                    text: 'Question: 05',
                    textAlign: TextAlign.start,
                    color: AppTheme.userText.withOpacity(.5),
                    fontWeight: FontWeight.w500,
                    fontSize: AddSize.font14,
                  ),
                ],
              ),
              addHeight(30),
              AddText(
                text: 'Google meet',
                textAlign: TextAlign.start,
                color: AppTheme.filtter,
                fontWeight: FontWeight.w600,
                fontSize: AddSize.font20,
              ),
              addHeight(20),
              Row(
                children: [
                  Container(
                    width: AddSize.size50,
                    height: AddSize.size50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border:
                            Border.all(color: AppTheme.subText.withOpacity(.5))
                        // color: AppTheme.whitebg.withOpacity(.8)
                        ),
                    padding: EdgeInsets.all(AddSize.size10),
                    child: Image.asset(
                      'assets/icons/google.png',
                      width: AddSize.size20,
                      height: AddSize.size20,
                      fit: BoxFit.contain,
                    ),
                  ),
                  addWidth(20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AddText(
                        text: 'Open Link',
                        textAlign: TextAlign.start,
                        color: AppTheme.filtter,
                        fontWeight: FontWeight.w500,
                        fontSize: AddSize.font14,
                        height: 1.8,
                      ),
                      // addWidth(10),
                      AddText(
                        text: 'www.meet.google.com/?hs=197&p...',
                        textAlign: TextAlign.start,
                        color: AppTheme.filtter.withOpacity(.5),
                        fontWeight: FontWeight.w400,
                        fontSize: AddSize.font14,
                      ),
                    ],
                  )
                ],
              ),
              addHeight(25),
              AddText(
                text: 'Instructor',
                textAlign: TextAlign.start,
                color: AppTheme.filtter,
                fontWeight: FontWeight.w600,
                fontSize: AddSize.font20,
              ),
              addHeight(20),
              Container(
                  decoration: BoxDecoration(
                      color: AppTheme.whitebg,
                      boxShadow: blurBoxShadow,
                      // border: Border.all(color: AppTheme.subText.withOpacity(.5)),
                      borderRadius: BorderRadius.circular(AddSize.size15)),
                  // width: AddSize.screenWidth,
                  height: AddSize.screenHeight * .20,
                  width: AddSize.size100 * 4,
                  margin: EdgeInsets.all(AddSize.size5),
                  child: Padding(
                    padding: EdgeInsets.all(AddSize.size5),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: AddSize.size50),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(
                              'assets/images/onboarding1.png',
                              width: AddSize.size80,
                              height: AddSize.size80,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: AddSize.size15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: AddSize.size15,
                            ),
                            AddText(
                              text: 'Instructor',
                              textAlign: TextAlign.start,
                              color: AppTheme.filtter.withOpacity(0.8),
                              fontWeight: FontWeight.w500,
                              fontSize: AddSize.font16,
                            ),
                            SizedBox(
                              height: AddSize.size15,
                            ),
                            Row(
                              children: [
                                AddText(
                                  text: '5 Course',
                                  textAlign: TextAlign.start,
                                  color: AppTheme.userText.withOpacity(.4),
                                  fontWeight: FontWeight.w500,
                                  fontSize: AddSize.font14,
                                ),
                                SizedBox(
                                  width: AddSize.size10,
                                ),
                                AddText(
                                  text: '8 Students',
                                  textAlign: TextAlign.start,
                                  color: AppTheme.userText.withOpacity(.4),
                                  fontWeight: FontWeight.w500,
                                  fontSize: AddSize.font14,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: AddSize.size15,
                            ),
                            AddButton(
                              titleText: "Talk with Instructor",
                              expended: false,
                            ),
                          ],
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
      bottomNavigationBar: YourButtonWidget(),
    );
  }

  Widget YourButtonWidget() {
    var deviceWidth = AddSize.screenWidth;
    return Container(
      height: AddSize.screenHeight * .1,
      width: AddSize.screenWidth,
      color: AppTheme.whitebg,
      child: Center(
        child: CommonButton('Start Course', () {
          Get.toNamed(MyRouter.checkoutScreen);
        }, deviceWidth, expended: true, AddSize.size50),
      ),
    );
  }
}
