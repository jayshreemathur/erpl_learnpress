import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/course_controller.dart';
import '../../../resource/app_theme.dart';
import '../../../routers/my_router.dart';
import '../../../widgets/add_text.dart';
import '../../../widgets/common_appbar.dart';
import '../../../widgets/common_button.dart';
import '../../../widgets/common_button3.dart';
import '../../../widgets/dimentions.dart';

class PaidSingleCourse extends StatefulWidget {
  const PaidSingleCourse({Key? key}) : super(key: key);

  @override
  State<PaidSingleCourse> createState() => _PaidSingleCourseState();
}

class _PaidSingleCourseState extends State<PaidSingleCourse>
    with TickerProviderStateMixin {
  CourseController controller = Get.put(CourseController());

  @override
  void initState() {
    controller.tabController = TabController(length: 2, vsync: this);
    controller.tabController.addListener(_handleTabSelection);
  }

  @override
  void dispose() {
    controller.tabController.dispose();
    super.dispose();
  }

  _handleTabSelection() {
    if (controller.tabController.indexIsChanging) {
      setState(() {});
    }
  }

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
      backgroundColor: AppTheme.whitebg,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AddSize.size100 * .82),
        child: CustomAppbar(
          titleText: 'Single Courses',
          isLikeButton: false,
          isProfileImage: false,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AddSize.padding12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: AddSize.size10,
              ),
              Container(
                decoration: BoxDecoration(
                    color: AppTheme.whitebg,
                    boxShadow: blurBoxShadow,
                    borderRadius: BorderRadius.circular(AddSize.size15)),
                // width: AddSize.screenWidth,
                // height: AddSize.screenHeight,
                //width: AddSize.size200,
                margin: EdgeInsets.all(AddSize.size5),
                padding: EdgeInsets.all(AddSize.size15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
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
                        Positioned(
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: EdgeInsets.all(AddSize.size10),
                              child: Container(
                                  width: AddSize.size45,
                                  height: AddSize.size45,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: AppTheme.whitebg.withOpacity(.8)),
                                  child: Icon(
                                    Icons.favorite_border,
                                    size: AddSize.size25,
                                    color: AppTheme.primaryColor,
                                  )),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AddText(
                          text: 'How to install wordpress',
                          textAlign: TextAlign.start,
                          color: AppTheme.filtter.withOpacity(0.8),
                          fontWeight: FontWeight.w500,
                          fontSize: AddSize.font18,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            SizedBox(width: AddSize.size5),
                            AddText(
                              text: '4.9',
                              color: Colors.amber,
                              fontWeight: FontWeight.w600,
                              fontSize: AddSize.font16,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: AddSize.size10,
                    ),
                    Row(
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
                              text: '10 Weeks Course',
                              textAlign: TextAlign.start,
                              color: AppTheme.userText.withOpacity(.4),
                              fontWeight: FontWeight.w500,
                              fontSize: AddSize.font14,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: AddSize.size30,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/icons/img.png',
                              height: AddSize.size20,
                              width: AddSize.size20,
                            ),
                            SizedBox(
                              width: AddSize.size10,
                            ),
                            AddText(
                              text: '67',
                              textAlign: TextAlign.start,
                              color: AppTheme.userText.withOpacity(.4),
                              fontWeight: FontWeight.w500,
                              fontSize: AddSize.font14,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: AddSize.size10,
                    ),
                    AddText(
                      text: '\$${150}',
                      textAlign: TextAlign.start,
                      color: AppTheme.linkColor,
                      fontWeight: FontWeight.w600,
                      fontSize: AddSize.font16,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: AddSize.size5,
              ),
              Container(
                  decoration: BoxDecoration(
                      color: AppTheme.whitebg,
                      boxShadow: blurBoxShadow,
                      borderRadius: BorderRadius.circular(AddSize.size15)),
                  // width: AddSize.screenWidth,
                  // height: AddSize.screenHeight,
                  //width: AddSize.size200,
                  margin: EdgeInsets.all(AddSize.size5),
                  child: Padding(
                    padding: EdgeInsets.all(AddSize.size15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AddText(
                              text: 'Description',
                              textAlign: TextAlign.start,
                              color: AppTheme.filtter,
                              fontWeight: FontWeight.w500,
                              fontSize: AddSize.font16,
                            ),
                            SizedBox(
                              width: AddSize.size10,
                            ),
                            Icon(
                              Icons.settings,
                              size: AddSize.size20,
                              color: AppTheme.primaryColor,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: AddSize.size10,
                        ),
                        AddText(
                          text: "description",
                          height: 1.2,
                          color: AppTheme.filtter.withOpacity(0.4),
                          fontWeight: FontWeight.w400,
                          fontSize: AddSize.font14,
                        ),
                        SizedBox(
                          height: AddSize.size10,
                        ),
                        AddText(
                          text: 'What will you learn from this course?',
                          color: AppTheme.filtter,
                          fontWeight: FontWeight.w600,
                          fontSize: AddSize.font16,
                        ),
                        SizedBox(
                          height: AddSize.size10,
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
                        AddText(
                          text: 'Curriculum',
                          color: AppTheme.filtter,
                          fontWeight: FontWeight.w500,
                          fontSize: AddSize.font18,
                        ),
                        SizedBox(
                          height: AddSize.size5,
                        ),
                        ListView.builder(
                            itemCount: 3,
                            shrinkWrap: true,
                            // scrollDirection: Axis.vertical,
                            physics: BouncingScrollPhysics(),
                            itemBuilder: (BuildContext context, int index) {
                              return Column(
                                children: [
                                  ExpansionTile(
                                    title: AddText(
                                      text: 'Section 1 : Basic WordPress (4)',
                                      color: AppTheme.filtter,
                                      fontWeight: FontWeight.w600,
                                      fontSize: AddSize.font16,
                                    ),
                                    children: <Widget>[
                                      ListTile(
                                        leading: Image.asset(
                                          'assets/images/lesson.png',
                                          width: AddSize.size20,
                                          height: AddSize.size20,
                                          fit: BoxFit.contain,
                                        ),
                                        title: Text(
                                          'Lesson 1: WordPress - Introduction',
                                          style: TextStyle(
                                              fontSize: AddSize.font16,
                                              color: AppTheme.filtter
                                                  .withOpacity(0.6),
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      ListTile(
                                        leading: Image.asset(
                                          'assets/images/lesson.png',
                                          width: AddSize.size20,
                                          height: AddSize.size20,
                                          fit: BoxFit.contain,
                                        ),
                                        title: Text(
                                          'Lesson 1: WordPress - Environment Setup',
                                          style: TextStyle(
                                              fontSize: AddSize.font16,
                                              color: AppTheme.filtter
                                                  .withOpacity(0.6),
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      ListTile(
                                        leading: Image.asset(
                                          'assets/images/que.png',
                                          width: AddSize.size20,
                                          height: AddSize.size20,
                                          fit: BoxFit.contain,
                                        ),
                                        title: Text(
                                          ' Quiz 1',
                                          style: TextStyle(
                                              fontSize: AddSize.font16,
                                              color: AppTheme.filtter
                                                  .withOpacity(0.6),
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      ListTile(
                                        leading: Image.asset(
                                          'assets/images/practice.png',
                                          width: AddSize.size20,
                                          height: AddSize.size20,
                                          fit: BoxFit.contain,
                                        ),
                                        title: Text(
                                          'Practical Test',
                                          style: TextStyle(
                                              fontSize: AddSize.font16,
                                              color: AppTheme.filtter
                                                  .withOpacity(0.6),
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              );
                            }),
                      ],
                    ),
                  )),
              SizedBox(
                height: AddSize.size5,
              ),
              Container(
                decoration: BoxDecoration(
                    color: AppTheme.whitebg,
                    boxShadow: blurBoxShadow,
                    borderRadius: BorderRadius.circular(AddSize.size15)),
                // width: AddSize.screenWidth,
                // height: AddSize.screenHeight,
                //width: AddSize.size200,
                margin: EdgeInsets.all(AddSize.size5),
                child: Padding(
                  padding: EdgeInsets.all(AddSize.size15),
                  child: Column(
                    // mainAxisSize: MainAxisSize.min,
                    children: [
                      TabBar(
                        controller: controller.tabController,
                        labelColor: AppTheme.primaryColor,
                        indicatorColor: AppTheme.primaryColor,
                        indicator: const UnderlineTabIndicator(
                          borderSide: BorderSide(color: AppTheme.primaryColor),
                        ),
                        tabs: const [
                          Tab(text: 'Instructor'),
                          Tab(text: 'Review'),
                        ],
                      ),
                      Center(
                        child: [
                          Column(
                            children: [
                              // ListView.builder(
                              //   physics:
                              //       const NeverScrollableScrollPhysics(),
                              //   padding: EdgeInsets.only(
                              //       top: AddSize.padding10),
                              //   shrinkWrap: true,
                              //   itemCount: profileController
                              //       .profileModel
                              //       .value
                              //       .data!
                              //       .certificates!
                              //       .length,
                              //   itemBuilder:
                              //       (context, index) {},
                              // ),
                              ...List.generate(
                                  2,
                                  (index2) => Container(
                                      decoration: BoxDecoration(
                                          color: AppTheme.whitebg,
                                          boxShadow: blurBoxShadow,
                                          border: Border.all(
                                              color: AppTheme.subText
                                                  .withOpacity(.5)),
                                          borderRadius: BorderRadius.circular(
                                              AddSize.size15)),
                                      // width: AddSize.screenWidth,
                                      height: AddSize.screenHeight * .20,
                                      width: AddSize.size100 * 4,
                                      margin: EdgeInsets.all(AddSize.size5),
                                      child: Padding(
                                        padding: EdgeInsets.all(AddSize.size5),
                                        child: Row(
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                              child: Image.asset(
                                                'assets/images/onboarding1.png',
                                                width: AddSize.size110,
                                                height: AddSize.size125,
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
                                                  text: 'Instructor',
                                                  textAlign: TextAlign.start,
                                                  color: AppTheme.filtter
                                                      .withOpacity(0.8),
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
                                                      textAlign:
                                                          TextAlign.start,
                                                      color: AppTheme.userText
                                                          .withOpacity(.4),
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: AddSize.font14,
                                                    ),
                                                    SizedBox(
                                                      width: AddSize.size10,
                                                    ),
                                                    AddText(
                                                      text: '8 Students',
                                                      textAlign:
                                                          TextAlign.start,
                                                      color: AppTheme.userText
                                                          .withOpacity(.4),
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: AddSize.font14,
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: AddSize.size15,
                                                ),
                                                const AddButton(
                                                  titleText:
                                                      "Talk to Instructor",
                                                  expended: false,
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ))),
                            ],
                          ),
                          Column(
                            children: [
                              ...List.generate(
                                  1,
                                  (index3) => Container(
                                      decoration: BoxDecoration(
                                          color: AppTheme.whitebg,
                                          boxShadow: blurBoxShadow,
                                          border: Border.all(
                                              color: AppTheme.subText
                                                  .withOpacity(.5)),
                                          borderRadius: BorderRadius.circular(
                                              AddSize.size15)),
                                      // width: AddSize.screenWidth,
                                      height: AddSize.screenHeight * .20,
                                      width: AddSize.size100 * 4,
                                      margin: EdgeInsets.all(AddSize.size5),
                                      child: Padding(
                                        padding: EdgeInsets.all(AddSize.size5),
                                        child: Row(
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                              child: Image.asset(
                                                'assets/images/onboarding1.png',
                                                width: AddSize.size110,
                                                height: AddSize.size125,
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
                                                  text: 'Instructor',
                                                  textAlign: TextAlign.start,
                                                  color: AppTheme.filtter
                                                      .withOpacity(0.8),
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
                                                      textAlign:
                                                          TextAlign.start,
                                                      color: AppTheme.userText
                                                          .withOpacity(.4),
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: AddSize.font14,
                                                    ),
                                                    SizedBox(
                                                      width: AddSize.size10,
                                                    ),
                                                    AddText(
                                                      text: '8 Students',
                                                      textAlign:
                                                          TextAlign.start,
                                                      color: AppTheme.userText
                                                          .withOpacity(.4),
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: AddSize.font14,
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: AddSize.size15,
                                                ),
                                                const AddButton(
                                                  titleText:
                                                      "Talk to Instructor",
                                                  expended: false,
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ))),
                            ],
                          ),
                        ][controller.tabController.index],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: AddSize.size20,
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
      color: AppTheme.whitebg,
      child: Center(
        child: CommonButton('Take Course', () {
          Get.toNamed(MyRouter.checkoutScreen);
        }, deviceWidth, expended: true, AddSize.size50),
      ),
    );
  }
}
