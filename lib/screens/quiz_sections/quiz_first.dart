import 'package:erpl_learnpress/widgets/common_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../resource/app_theme.dart';
import '../../routers/my_router.dart';
import '../../widgets/add_text.dart';
import '../../widgets/common_appbar.dart';
import '../../widgets/common_button.dart';
import '../../widgets/common_button3.dart';
import '../../widgets/dimentions.dart';

class QuizFirst extends StatefulWidget {
  const QuizFirst({Key? key}) : super(key: key);

  @override
  State<QuizFirst> createState() => _QuizFirstState();
}

class _QuizFirstState extends State<QuizFirst> {
  final usertext =
      "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.";

  @override
  Widget build(BuildContext context) {
    var deviceWidth = AddSize.screenHeight;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AddSize.size100 * .82),
        child: CustomAppbar(
          titleText: 'Quiz',
          isLikeButton: false,
          isProfileImage: false,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AddSize.padding20),
          child: Column(
            children: [
              Row(
                children: [
                  AddText(
                    text: 'Quiz 1',
                    fontSize: AddSize.font18,
                    color: AppTheme.userText,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(
                    width: AddSize.size10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: AppTheme.subText),
                        borderRadius: BorderRadius.circular(100)),
                    child: Icon(
                      Icons.play_arrow_outlined,
                      color: AppTheme.filtter,
                      size: AddSize.size22,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: AddSize.size10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.watch_later_outlined,
                        color: AppTheme.primaryColor,
                        size: AddSize.size22,
                      ),
                      SizedBox(
                        width: AddSize.size10,
                      ),
                      AddText(
                        text: '10 mins',
                        fontSize: AddSize.font16,
                        color: AppTheme.userText.withOpacity(.5),
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: AppTheme.primaryColor),
                            borderRadius: BorderRadius.circular(100)),
                        child: Icon(
                          Icons.question_mark,
                          color: AppTheme.primaryColor,
                          size: AddSize.size18,
                        ),
                      ),
                      SizedBox(
                        width: AddSize.size10,
                      ),
                      AddText(
                        text: 'Question : 10',
                        fontSize: AddSize.font16,
                        color: AppTheme.userText.withOpacity(.5),
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: AddSize.size20,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/icons/grade.png',
                    color: AppTheme.primaryColor,
                    height: AddSize.size22,
                  ),
                  SizedBox(
                    width: AddSize.size10,
                  ),
                  AddText(
                    text: 'Passing Grade : 100%',
                    fontSize: AddSize.font16,
                    color: AppTheme.userText.withOpacity(.5),
                    fontWeight: FontWeight.w400,
                  ),
                ],
              ),
              SizedBox(
                height: AddSize.size20,
              ),
              Row(
                children: [
                  // Padding(
                  //   padding: EdgeInsets.only(bottom: AddSize.size30),
                  //   child: Container(
                  //     decoration: BoxDecoration(
                  //         border: Border.all(color: AppTheme.subText),
                  //         borderRadius: BorderRadius.circular(100)),
                  //     child: Icon(
                  //       Icons.play_arrow_outlined,
                  //       color: AppTheme.filtter,
                  //       size: AddSize.size22,
                  //     ),
                  //   ),
                  // ),
                  // SizedBox(
                  //   width: AddSize.size10,
                  // ),
                  Expanded(
                    child: AddText(
                      text: usertext,
                      height: 1.4,
                      fontSize: AddSize.font16,
                      color: AppTheme.userText.withOpacity(.5),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: AddSize.size20,
              ),
              AddText(
                text: usertext,
                height: 1.4,
                fontSize: AddSize.font16,
                color: AppTheme.userText.withOpacity(.5),
                fontWeight: FontWeight.w400,
              ),
              SizedBox(
                height: AddSize.size25,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: CommonButton('Start', () {
                  Get.toNamed(MyRouter.subQuizFirst);
                }, deviceWidth, expended: true, AddSize.size50),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
