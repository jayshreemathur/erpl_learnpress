import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../resource/app_theme.dart';
import '../../widgets/add_text.dart';
import '../../widgets/common_appbar.dart';
import '../../widgets/dimentions.dart';

class MyCoursesScreen extends StatelessWidget {
  const MyCoursesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppTheme.whitebg,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(AddSize.size100 * .82),
          child: CustomAppbar(
            titleText: 'My Courses',
            isLikeButton: false,
            isProfileImage: false,
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(AddSize.padding12),
            child: Container(
              height: MediaQuery.of(context).size.height * 2,
              padding: EdgeInsets.only(top: AddSize.size10),
              // margin: EdgeInsets.all(AddSize.size10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: AddSize.size10,
                  ),
                  Container(
                    decoration: BoxDecoration(boxShadow: blurBoxShadow),
                    child: ListView.builder(
                        itemCount: 2,
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                              decoration: BoxDecoration(
                                  color: AppTheme.whitebg,
                                  boxShadow: blurBoxShadow,
                                  borderRadius:
                                      BorderRadius.circular(AddSize.size15)),
                              // width: AddSize.screenWidth,
                              height: AddSize.screenHeight * .16,
                              width: AddSize.size200,
                              margin: EdgeInsets.all(AddSize.size5),
                              child: Padding(
                                padding: EdgeInsets.all(AddSize.size10),
                                child: Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(8.0),
                                        topRight: Radius.circular(8.0),
                                        bottomLeft: Radius.circular(8.0),
                                        bottomRight: Radius.circular(8.0),
                                      ),
                                      child: Image.asset(
                                        'assets/images/onboarding1.png',
                                        width: AddSize.size100,
                                        height: AddSize.size110,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(
                                      width: AddSize.size15,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: AddSize.size15,
                                        ),
                                        AddText(
                                          text: 'How to install wordpress',
                                          textAlign: TextAlign.start,
                                          color:
                                              AppTheme.filtter.withOpacity(0.8),
                                          fontWeight: FontWeight.w500,
                                          fontSize: AddSize.font16,
                                        ),
                                        SizedBox(
                                          height: AddSize.size15,
                                        ),
                                        LinearPercentIndicator(
                                          width: 200,
                                          animation: true,
                                          lineHeight: 8.0,
                                          animationDuration: 2500,
                                          percent: 0.8,
                                          linearStrokeCap:
                                              LinearStrokeCap.roundAll,
                                          progressColor: Colors.blue,
                                        ),
                                        SizedBox(
                                          height: AddSize.size15,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            AddText(
                                              text: 'In progress',
                                              textAlign: TextAlign.start,
                                              color: AppTheme.linkColor,
                                              fontWeight: FontWeight.w500,
                                              fontSize: AddSize.font14,
                                            ),
                                            SizedBox(
                                              width: AddSize.size50,
                                            ),
                                            AddText(
                                              text: '55 Hours',
                                              textAlign: TextAlign.start,
                                              color: AppTheme.userText
                                                  .withOpacity(.4),
                                              fontWeight: FontWeight.w500,
                                              fontSize: AddSize.font14,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: AddSize.size15,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ));
                        }),
                  ),
                  SizedBox(
                    height: AddSize.size10,
                  ),
                  Container(
                    decoration: BoxDecoration(boxShadow: blurBoxShadow),
                    child: ListView.builder(
                        itemCount: 2,
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                              decoration: BoxDecoration(
                                  color: AppTheme.whitebg,
                                  boxShadow: blurBoxShadow,
                                  borderRadius:
                                      BorderRadius.circular(AddSize.size15)),
                              // width: AddSize.screenWidth,
                              height: AddSize.screenHeight * .16,
                              width: AddSize.size200,
                              margin: EdgeInsets.all(AddSize.size5),
                              child: Padding(
                                padding: EdgeInsets.all(AddSize.size10),
                                child: Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(8.0),
                                        topRight: Radius.circular(8.0),
                                        bottomLeft: Radius.circular(8.0),
                                        bottomRight: Radius.circular(8.0),
                                      ),
                                      child: Image.asset(
                                        'assets/images/onboarding1.png',
                                        width: AddSize.size100,
                                        height: AddSize.size110,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(
                                      width: AddSize.size15,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: AddSize.size15,
                                        ),
                                        AddText(
                                          text: 'How to install wordpress',
                                          textAlign: TextAlign.start,
                                          color:
                                              AppTheme.filtter.withOpacity(0.8),
                                          fontWeight: FontWeight.w500,
                                          fontSize: AddSize.font16,
                                        ),
                                        SizedBox(
                                          height: AddSize.size15,
                                        ),
                                        LinearPercentIndicator(
                                          width: 200,
                                          animation: true,
                                          lineHeight: 8.0,
                                          animationDuration: 2500,
                                          percent: 0.9,
                                          linearStrokeCap:
                                              LinearStrokeCap.roundAll,
                                          progressColor: Colors.green,
                                        ),
                                        SizedBox(
                                          height: AddSize.size15,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            AddText(
                                              text: 'Passed',
                                              textAlign: TextAlign.start,
                                              color: AppTheme.primaryColor,
                                              fontWeight: FontWeight.w500,
                                              fontSize: AddSize.font14,
                                            ),
                                            SizedBox(
                                              width: AddSize.size80,
                                            ),
                                            AddText(
                                              text: '55 Hours',
                                              textAlign: TextAlign.start,
                                              color: AppTheme.userText
                                                  .withOpacity(.4),
                                              fontWeight: FontWeight.w500,
                                              fontSize: AddSize.font14,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: AddSize.size15,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ));
                        }),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
