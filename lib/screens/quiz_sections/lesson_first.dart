import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../resource/app_theme.dart';
import '../../routers/my_router.dart';
import '../../widgets/add_text.dart';
import '../../widgets/common_appbar.dart';
import '../../widgets/common_button.dart';
import '../../widgets/dimentions.dart';

class LessonFirst extends StatefulWidget {
  const LessonFirst({Key? key}) : super(key: key);

  @override
  State<LessonFirst> createState() => _LessonFirstState();
}

class _LessonFirstState extends State<LessonFirst> {
  final firstHalf =
      "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum";
  final secondHalf =
      "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.";
  final thirdHalf =
      " It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum";
  final complete = " Congrats! You have completed the lesson successfully";

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
          titleText: 'Lesson - 1',
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
              AddText(
                text: thirdHalf,
                fontSize: AddSize.font16,
                height: 1.2,
                color: AppTheme.userText.withOpacity(.5),
                fontWeight: FontWeight.w400,
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
              Align(
                alignment: Alignment.centerLeft,
                child: CommonButton('Complete', () {
                  Completed(context);
                }, deviceWidth, expended: true, AddSize.size50),
              ),
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
                      Align(
                        alignment: Alignment.center,
                        child: AddText(
                          text: "Completed",
                          color: AppTheme.filtter,
                          fontWeight: FontWeight.w500,
                          fontSize: AddSize.font18,
                        ),
                      ),
                      SizedBox(
                        height: AddSize.size10,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: AddText(
                          text:
                              " Congrats! You have completed \n         the lesson successfully",
                          color: AppTheme.userText.withOpacity(.8),
                          fontWeight: FontWeight.w400,
                          height: 1.5,
                          fontSize: AddSize.font16,
                        ),
                      ),
                      SizedBox(
                        height: AddSize.size20,
                      ),
                      CommonButton('Next', () {
                        Get.toNamed(MyRouter.lessonSecond);
                      }, deviceWidth, expended: true, AddSize.size50),
                      SizedBox(
                        height: AddSize.size20,
                      ),
                    ],
                  ),
                ),
              )));
}
