import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../resource/app_theme.dart';
import '../../routers/my_router.dart';
import '../../widgets/add_text.dart';
import '../../widgets/common_appbar.dart';
import '../../widgets/common_button.dart';
import '../../widgets/dimentions.dart';

class LessonSecond extends StatefulWidget {
  const LessonSecond({Key? key}) : super(key: key);

  @override
  State<LessonSecond> createState() => _LessonSecondState();
}

class _LessonSecondState extends State<LessonSecond> {
  final firstHalf =
      "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum";
  final secondHalf =
      "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.";
  final thirdHalf =
      " It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum";

  List<String> options = [
    "It is a long established fact that a reader ",
    "It is a long established fact that a reader will be distracted by the readable content",
    "It is a long established fact that a reader ",
    "It is a long established fact that a reader will be distracted by the readable content",
  ];

  @override
  Widget build(BuildContext context) {
    var deviceWidth = AddSize.screenHeight;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AddSize.size100 * .82),
        child: CustomAppbar(
          titleText: 'Lesson - 2',
          isLikeButton: false,
          isProfileImage: false,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AddSize.padding18),
          child: Column(
            children: [
              Row(
                children: [
                  AddText(
                    text: 'Lesson 1 : wordPress - Introduction',
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
                height: AddSize.size15,
              ),
              AddText(
                text: firstHalf,
                fontSize: AddSize.font16,
                height: 1.2,
                color: AppTheme.userText.withOpacity(.5),
                fontWeight: FontWeight.w400,
              ),
              SizedBox(
                height: AddSize.size15,
              ),
              AddText(
                text: secondHalf,
                fontSize: AddSize.font16,
                height: 1.2,
                color: AppTheme.userText.withOpacity(.5),
                fontWeight: FontWeight.w400,
              ),
              SizedBox(
                height: AddSize.size15,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: AddSize.size15),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8.0),
                    topRight: Radius.circular(8.0),
                    bottomLeft: Radius.circular(8.0),
                    bottomRight: Radius.circular(8.0),
                  ),
                  child: Image.asset(
                    'assets/images/onboarding1.png',
                    width: AddSize.size100 * 4,
                    height: AddSize.size100 * 2,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: AddSize.size15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AddText(
                    text: 'What is the wordPress?',
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
                      color: AppTheme.filtter.withOpacity(.6),
                      size: AddSize.size22,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: AddSize.size15,
              ),
              Padding(
                padding: EdgeInsets.only(right: AddSize.size50),
                child: ListView.builder(
                    itemCount: options.length,
                    shrinkWrap: true,
                    // scrollDirection: Axis.vertical,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          AddText(
                            text: "* " + options[index].toString(),
                            color: AppTheme.userText.withOpacity(.5),
                            fontWeight: FontWeight.w400,
                            height: 1.5,
                            fontSize: AddSize.font16,
                          ),
                          SizedBox(
                            height: AddSize.size5,
                          ),
                        ],
                      );
                    }),
              ),
              SizedBox(
                height: AddSize.size20,
              ),
              Row(
                children: [
                  Expanded(
                    child: AddText(
                      text: thirdHalf,
                      fontSize: AddSize.font16,
                      height: 1.2,
                      color: AppTheme.userText.withOpacity(.5),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: AddSize.size20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: AddText(
                      text: 'Documents',
                      fontSize: AddSize.font18,
                      color: AppTheme.filtter,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: AddSize.size20,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/icons/pdf.png',
                        height: AddSize.size25,
                      ),
                      SizedBox(
                        width: AddSize.size10,
                      ),
                      AddText(
                        text: 'WordPress plugins here ',
                        fontSize: AddSize.font16,
                        color: AppTheme.filtter.withOpacity(.5),
                        fontWeight: FontWeight.w400,
                      ),
                      AddText(
                        text: 'Download',
                        fontSize: AddSize.font16,
                        color: AppTheme.primaryColor,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: AddSize.size20,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/icons/word.png',
                        height: AddSize.size25,
                      ),
                      SizedBox(
                        width: AddSize.size10,
                      ),
                      AddText(
                        text: 'WordPress plugins here ',
                        fontSize: AddSize.font16,
                        color: AppTheme.filtter.withOpacity(.5),
                        fontWeight: FontWeight.w400,
                      ),
                      AddText(
                        text: 'Download',
                        fontSize: AddSize.font16,
                        color: AppTheme.primaryColor,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: AddSize.size40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: CommonButton('Complete', () {
                      Completed(context);
                    }, deviceWidth, expended: true, AddSize.size40),
                  ),
                  SizedBox(
                    width: AddSize.size12,
                  ),
                  Expanded(
                    child: CommonButton('Finish Course', () {
                      Get.toNamed(MyRouter.quizFirst);
                    }, deviceWidth, AddSize.size50),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

Completed(BuildContext context) {
  var deviceWidth = AddSize.screenHeight;
  showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) => StatefulBuilder(
          builder: (context, setState) => Dialog(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0))),
                insetPadding: EdgeInsets.symmetric(horizontal: AddSize.size40),
                child: Container(
                  padding: EdgeInsets.all(AddSize.size15),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: AddSize.size10,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: AddText(
                          text: "Finish Course",
                          color: AppTheme.filtter,
                          fontWeight: FontWeight.w500,
                          fontSize: AddSize.font20,
                        ),
                      ),
                      SizedBox(
                        height: AddSize.size10,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: AddText(
                          text:
                              " Are you sure you want to finish\n                this Course",
                          color: AppTheme.userText.withOpacity(.8),
                          fontWeight: FontWeight.w400,
                          height: 1.5,
                          fontSize: AddSize.font16,
                        ),
                      ),
                      SizedBox(
                        height: AddSize.size20,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                Get.back();
                              },
                              style: ElevatedButton.styleFrom(
                                  side: BorderSide(
                                    width: 0.8,
                                    color: AppTheme.primaryColor,
                                  ),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      side: BorderSide(color: Colors.red)),
                                  primary: AppTheme.backgroundColor,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 16),
                                  textStyle: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold)),
                              child: AddText(
                                text: 'Cancel',
                                color: AppTheme.primaryColor,
                                fontWeight: FontWeight.w500,
                                fontSize: AddSize.font18,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: AddSize.size20,
                          ),
                          Expanded(
                            child: CommonButton('Next', () {
                              Get.toNamed(MyRouter.quizFirst);
                            }, deviceWidth, expended: true, AddSize.size50),
                          )
                        ],
                      ),
                      SizedBox(
                        height: AddSize.size20,
                      ),
                    ],
                  ),
                ),
              )));
}
