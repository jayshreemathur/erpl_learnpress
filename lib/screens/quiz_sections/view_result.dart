import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import '../../resource/app_theme.dart';
import '../../routers/my_router.dart';
import '../../widgets/add_text.dart';
import '../../widgets/common_appbar.dart';
import '../../widgets/common_button.dart';
import '../../widgets/dimentions.dart';

class ViewResult extends StatelessWidget {
  const ViewResult({Key? key}) : super(key: key);

  final result =
      "Your quiz grade passed. The result is 100%( the requirement is the 100%)";

  @override
  Widget build(BuildContext context) {
    var deviceWidth = AddSize.screenHeight;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AddSize.size100 * .82),
        child: CustomAppbar(
          titleText: 'Your Result',
          isLikeButton: false,
          isProfileImage: false,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AddSize.padding16),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: AppTheme.whitebg,
                    boxShadow: blurBoxShadow,
                    borderRadius: BorderRadius.circular(20)),
                height: AddSize.size125,
                child: Row(
                  children: [
                    SizedBox(
                      width: AddSize.size30,
                    ),
                    CircularPercentIndicator(
                      radius: 80.0,
                      lineWidth: 6.0,
                      animation: true,
                      percent: 0.99,
                      center: Text(
                        "100.0%",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: AddSize.font16),
                      ),
                      circularStrokeCap: CircularStrokeCap.round,
                      progressColor: AppTheme.primaryColor,
                    ),
                    SizedBox(
                      width: AddSize.size20,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: AddSize.size40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          AddText(
                            text: 'Your Result',
                            color: AppTheme.filtter,
                            fontWeight: FontWeight.w400,
                            fontSize: AddSize.font16,
                          ),
                          SizedBox(
                            height: AddSize.size10,
                          ),
                          AddText(
                            text: 'Passed',
                            color: AppTheme.primaryColor,
                            fontWeight: FontWeight.w500,
                            fontSize: AddSize.font22,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: AddSize.size22,
              ),
              AddText(
                text: result,
                color: AppTheme.primaryColor.withOpacity(.8),
                fontWeight: FontWeight.w400,
                height: 1.5,
                fontSize: AddSize.font16,
              ),
              SizedBox(
                height: AddSize.size22,
              ),
              Padding(
                padding: EdgeInsets.all(AddSize.padding10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AddText(
                          text: 'Question',
                          color: AppTheme.filtter.withOpacity(.5),
                          fontWeight: FontWeight.w400,
                          height: 1.5,
                          fontSize: AddSize.font16,
                        ),
                        AddText(
                          text: '10',
                          color: AppTheme.filtter.withOpacity(.5),
                          fontWeight: FontWeight.w400,
                          height: 1.5,
                          fontSize: AddSize.font16,
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 1,
                      color: AppTheme.subText.withOpacity(.5),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AddText(
                          text: 'Correct',
                          color: AppTheme.filtter.withOpacity(.5),
                          fontWeight: FontWeight.w400,
                          height: 1.5,
                          fontSize: AddSize.font16,
                        ),
                        AddText(
                          text: '10',
                          color: AppTheme.filtter.withOpacity(.5),
                          fontWeight: FontWeight.w400,
                          height: 1.5,
                          fontSize: AddSize.font16,
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 1,
                      color: AppTheme.subText.withOpacity(.5),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AddText(
                          text: 'Wrong',
                          color: AppTheme.filtter.withOpacity(.5),
                          fontWeight: FontWeight.w400,
                          height: 1.5,
                          fontSize: AddSize.font16,
                        ),
                        AddText(
                          text: '00',
                          color: AppTheme.filtter.withOpacity(.5),
                          fontWeight: FontWeight.w400,
                          height: 1.5,
                          fontSize: AddSize.font16,
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 1,
                      color: AppTheme.subText.withOpacity(.5),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AddText(
                          text: 'Skipped',
                          color: AppTheme.filtter.withOpacity(.5),
                          fontWeight: FontWeight.w400,
                          height: 1.5,
                          fontSize: AddSize.font16,
                        ),
                        AddText(
                          text: '00',
                          color: AppTheme.filtter.withOpacity(.5),
                          fontWeight: FontWeight.w400,
                          height: 1.5,
                          fontSize: AddSize.font16,
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 1,
                      color: AppTheme.subText.withOpacity(.5),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AddText(
                          text: 'Point',
                          color: AppTheme.filtter.withOpacity(.5),
                          fontWeight: FontWeight.w400,
                          height: 1.5,
                          fontSize: AddSize.font16,
                        ),
                        AddText(
                          text: '100',
                          color: AppTheme.filtter.withOpacity(.5),
                          fontWeight: FontWeight.w400,
                          height: 1.5,
                          fontSize: AddSize.font16,
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 1,
                      color: AppTheme.subText.withOpacity(.5),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AddText(
                          text: 'Time Spent',
                          color: AppTheme.filtter.withOpacity(.5),
                          fontWeight: FontWeight.w400,
                          height: 1.5,
                          fontSize: AddSize.font16,
                        ),
                        AddText(
                          text: '00 : 05:50',
                          color: AppTheme.filtter.withOpacity(.5),
                          fontWeight: FontWeight.w400,
                          height: 1.5,
                          fontSize: AddSize.font16,
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 1,
                      color: AppTheme.subText.withOpacity(.5),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: AddSize.size22,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: CommonButton('View Certificate', () {
                  Get.toNamed(MyRouter.singleCertificate);
                }, deviceWidth, expended: true, AddSize.size50),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
