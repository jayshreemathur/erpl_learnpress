import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

import '../../resource/app_theme.dart';
import '../../routers/my_router.dart';
import '../../widgets/add_text.dart';
import '../../widgets/common_appbar.dart';
import '../../widgets/common_button.dart';
import '../../widgets/dimentions.dart';

class SubQuizSecond extends StatefulWidget {
  const SubQuizSecond({Key? key}) : super(key: key);

  @override
  State<SubQuizSecond> createState() => _SubQuizSecondState();
}

RxInt currentIndex = (-1).obs;

class _SubQuizSecondState extends State<SubQuizSecond> {
  String? selectedValue;

  List<String> options = [
    "It is a long established fact that a reader ",
    "It is a long established fact that a reader ",
    "It is a long established fact that a reader ",
    "It is a long established fact that a reader ",
  ];

  final question =
      "Q. 2   It is a long established fact that a reader will distracted by the readable ?";

  List method = ["paypal", "payment card"];

  String? selectedMethod;

  RxInt currentIndex = (-1).obs;

  @override
  Widget build(BuildContext context) {
    var deviceWidth = AddSize.screenHeight;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AddSize.size100 * .82),
        child: CustomAppbar(
          titleText: 'Quiz 1',
          isLikeButton: false,
          isProfileImage: false,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AddSize.padding16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      AddText(
                        text: 'Quiz 1',
                        fontSize: AddSize.font18,
                        color: AppTheme.userText,
                        fontWeight: FontWeight.bold,
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
                  AddText(
                    text: '09:49 Remaining',
                    fontSize: AddSize.font16,
                    color: AppTheme.alerttxt,
                    fontWeight: FontWeight.w400,
                  ),
                ],
              ),
              SizedBox(
                height: AddSize.size20,
              ),
              AddText(
                text: question,
                fontSize: AddSize.font16,
                color: AppTheme.filtter,
                height: 1.5,
                fontWeight: FontWeight.w400,
              ),
              SizedBox(
                height: AddSize.size20,
              ),
              Row(
                children: [
                  addRadioButton(0),
                  AddText(
                    text: options[0],
                    textAlign: TextAlign.start,
                    color: AppTheme.filtter,
                    fontWeight: FontWeight.w500,
                    fontSize: AddSize.font14,
                  ),
                ],
              ),
              Row(
                children: [
                  addRadioButton(1),
                  AddText(
                    text: options[0],
                    textAlign: TextAlign.start,
                    color: AppTheme.filtter,
                    fontWeight: FontWeight.w500,
                    fontSize: AddSize.font14,
                  ),
                ],
              ),
              Row(
                children: [
                  addRadioButton(2),
                  AddText(
                    text: options[0],
                    textAlign: TextAlign.start,
                    color: AppTheme.filtter,
                    fontWeight: FontWeight.w500,
                    fontSize: AddSize.font14,
                  ),
                ],
              ),
              Row(
                children: [
                  addRadioButton(3),
                  AddText(
                    text: options[0],
                    textAlign: TextAlign.start,
                    color: AppTheme.filtter,
                    fontWeight: FontWeight.w500,
                    fontSize: AddSize.font14,
                  ),
                ],
              ),
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
      // color: AppTheme.whitebg,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          addWidth(10),
          InkWell(
            onTap: () {
              Get.toNamed(MyRouter.subQuizFirst);
            },
            child: Container(
              width: AddSize.size50,
              height: AddSize.size50,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8.0),
                    topRight: Radius.circular(8.0),
                    bottomLeft: Radius.circular(8.0),
                    bottomRight: Radius.circular(8.0),
                  ),
                  border:
                      Border.all(color: AppTheme.primaryColor.withOpacity(.5))
                  // color: AppTheme.whitebg.withOpacity(.8)
                  ),
              padding: EdgeInsets.all(AddSize.size10),
              child: Image.asset(
                'assets/icons/forward.png',
                width: AddSize.size18,
                height: AddSize.size18,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Center(
            child: CommonButton('Finish', () {
              Get.toNamed(MyRouter.passedResult);
            }, deviceWidth, expended: true, AddSize.size50),
          ),
          InkWell(
            onTap: () {
              Get.toNamed(MyRouter.passedResult);
            },
            child: Container(
              width: AddSize.size50,
              height: AddSize.size50,
              decoration: BoxDecoration(
                  //shape: BoxShape.rectangle,
                  color: AppTheme.primaryColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8.0),
                    topRight: Radius.circular(8.0),
                    bottomLeft: Radius.circular(8.0),
                    bottomRight: Radius.circular(8.0),
                  ),
                  border:
                      Border.all(color: AppTheme.primaryColor.withOpacity(.5))
                  // color: AppTheme.whitebg.withOpacity(.8)
                  ),
              padding: EdgeInsets.all(AddSize.size10),
              child: Image.asset(
                'assets/icons/backward.png',
                width: AddSize.size18,
                height: AddSize.size18,
                fit: BoxFit.contain,
              ),
            ),
          ),
          addWidth(10),
        ],
      ),
    );
  }

  Row addRadioButton(int btnValue) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Radio<String>(
          activeColor: AppTheme.filtter,
          value: options[btnValue],
          groupValue: selectedValue,
          onChanged: (value) {
            setState(() {
              print(value);
              selectedValue = value;
            });
          },
        ),
      ],
    );
  }
}
