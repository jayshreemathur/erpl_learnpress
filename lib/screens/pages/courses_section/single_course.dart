import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../controllers/course_controller.dart';
import '../../../resource/app_theme.dart';
import '../../../routers/my_router.dart';
import '../../../widgets/add_text.dart';
import '../../../widgets/common_appbar.dart';
import '../../../widgets/common_button.dart';
import '../../../widgets/common_button3.dart';
import '../../../widgets/dimentions.dart';

class SingleCourse extends StatefulWidget {
  const SingleCourse({Key? key}) : super(key: key);

  @override
  State<SingleCourse> createState() => _SingleCourseState();
}

class _SingleCourseState extends State<SingleCourse>
    with TickerProviderStateMixin {
  final description =
      "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.";
  final review =
      "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.";

  late String firstHalf;
  late String SecondHalf;
  bool flag = true;

  List<String> options = [
    "It is a long established fact that a reader ",
    "It is a long established fact that a reader will be distracted by the readable content",
    "It is a long established fact that a reader ",
    "It is a long established fact that a reader will be distracted by the readable content",
  ];

  CourseController controller = Get.put(CourseController());

  @override
  void initState() {
    controller.tabController = TabController(length: 2, vsync: this);
    controller.tabController.addListener(_handleTabSelection);
    if (review.length > 50) {
      firstHalf = review.substring(0, 50);
      SecondHalf = review.substring(50, review.length);
    } else {
      firstHalf = review;
      SecondHalf = "";
    }
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
                child: Padding(
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
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color:
                                            AppTheme.whitebg.withOpacity(.8)),
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
                        text: 'Free',
                        textAlign: TextAlign.start,
                        color: AppTheme.linkColor,
                        fontWeight: FontWeight.w600,
                        fontSize: AddSize.font16,
                      ),
                    ],
                  ),
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
                          text: description,
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
                                      InkWell(
                                        onTap: () {
                                          Get.toNamed(MyRouter.lessonFirst);
                                        },
                                        child: ListTile(
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
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Get.toNamed(MyRouter.lessonSecond);
                                        },
                                        child: ListTile(
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
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Get.toNamed(MyRouter.quizFirst);
                                        },
                                        child: ListTile(
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
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Get.toNamed(MyRouter.practicalTest);
                                        },
                                        child: ListTile(
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
                                  1,
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
                                                AddButton(
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
                                        height: AddSize.screenHeight * 2,
                                        // width: AddSize.screenHeight,
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.all(
                                                  AddSize.padding12),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  AddText(
                                                    text: 'Overall Rating',
                                                    color: AppTheme.userText
                                                        .withOpacity(.5),
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: AddSize.font14,
                                                  ),
                                                  addHeight(10),
                                                  Row(
                                                    children: [
                                                      AddText(
                                                        text: '4.8',
                                                        color: AppTheme.filtter,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize:
                                                            AddSize.font10 * 4,
                                                      ),
                                                      addWidth(25),
                                                      Column(
                                                        children: [
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceEvenly,
                                                            children: [
                                                              Image.asset(
                                                                'assets/icons/star.png',
                                                                width: AddSize
                                                                    .size18,
                                                                height: AddSize
                                                                    .size18,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                              addWidth(10),
                                                              Image.asset(
                                                                'assets/icons/star.png',
                                                                width: AddSize
                                                                    .size18,
                                                                height: AddSize
                                                                    .size18,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                              addWidth(10),
                                                              Image.asset(
                                                                'assets/icons/star.png',
                                                                width: AddSize
                                                                    .size18,
                                                                height: AddSize
                                                                    .size18,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                              addWidth(10),
                                                              Image.asset(
                                                                'assets/icons/star.png',
                                                                width: AddSize
                                                                    .size18,
                                                                height: AddSize
                                                                    .size18,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                              addWidth(10),
                                                              Image.asset(
                                                                'assets/icons/star.png',
                                                                width: AddSize
                                                                    .size18,
                                                                height: AddSize
                                                                    .size18,
                                                                fit: BoxFit
                                                                    .cover,
                                                                color: AppTheme
                                                                    .subText
                                                                    .withOpacity(
                                                                        .5),
                                                              ),
                                                            ],
                                                          ),
                                                          addHeight(10),
                                                          AddText(
                                                            text:
                                                                'based on 23 reviews',
                                                            color: AppTheme
                                                                .userText
                                                                .withOpacity(
                                                                    .5),
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize:
                                                                AddSize.font14,
                                                          ),
                                                          SizedBox(
                                                            height:
                                                                AddSize.size5,
                                                          ),
                                                        ],
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                            addHeight(15),
                                            Row(
                                              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    AddText(
                                                      text: 'Excellent',
                                                      color: AppTheme.userText
                                                          .withOpacity(.5),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: AddSize.font16,
                                                    ),
                                                    SizedBox(
                                                      height: AddSize.size10,
                                                    ),
                                                    AddText(
                                                      text: 'Good',
                                                      color: AppTheme.userText
                                                          .withOpacity(.5),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: AddSize.font16,
                                                    ),
                                                    SizedBox(
                                                      height: AddSize.size10,
                                                    ),
                                                    AddText(
                                                      text: 'Average',
                                                      color: AppTheme.userText
                                                          .withOpacity(.5),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: AddSize.font16,
                                                    ),
                                                    SizedBox(
                                                      height: AddSize.size10,
                                                    ),
                                                    AddText(
                                                      text: 'Below Average',
                                                      color: AppTheme.userText
                                                          .withOpacity(.5),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: AddSize.font16,
                                                    ),
                                                    SizedBox(
                                                      height: AddSize.size10,
                                                    ),
                                                    AddText(
                                                      text: 'Poor',
                                                      color: AppTheme.userText
                                                          .withOpacity(.5),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: AddSize.font16,
                                                    ),
                                                    SizedBox(
                                                      height: AddSize.size10,
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  width: AddSize.size10,
                                                ),
                                                Column(
                                                  // crossAxisAlignment: CrossAxisAlignment.end,
                                                  children: [
                                                    ///excellent
                                                    LinearPercentIndicator(
                                                      width: 180,
                                                      animation: true,
                                                      lineHeight: 5.0,
                                                      animationDuration: 2500,
                                                      percent: 0.9,
                                                      linearStrokeCap:
                                                          LinearStrokeCap
                                                              .roundAll,
                                                      progressColor:
                                                          Colors.green,
                                                    ),
                                                    SizedBox(
                                                      height: AddSize.size20,
                                                    ),

                                                    ///good
                                                    LinearPercentIndicator(
                                                      width: 180,
                                                      animation: true,
                                                      lineHeight: 5.0,
                                                      animationDuration: 2500,
                                                      percent: 0.8,
                                                      linearStrokeCap:
                                                          LinearStrokeCap
                                                              .roundAll,
                                                      progressColor:
                                                          Colors.greenAccent,
                                                    ),
                                                    SizedBox(
                                                      height: AddSize.size20,
                                                    ),

                                                    ///average
                                                    LinearPercentIndicator(
                                                      width: 180,
                                                      animation: true,
                                                      lineHeight: 5.0,
                                                      animationDuration: 2500,
                                                      percent: 0.6,
                                                      linearStrokeCap:
                                                          LinearStrokeCap
                                                              .roundAll,
                                                      progressColor:
                                                          Colors.yellow,
                                                    ),
                                                    SizedBox(
                                                      height: AddSize.size20,
                                                    ),
                                                    LinearPercentIndicator(
                                                      width: 180,
                                                      animation: true,
                                                      lineHeight: 5.0,
                                                      animationDuration: 2500,
                                                      percent: 0.4,
                                                      linearStrokeCap:
                                                          LinearStrokeCap
                                                              .roundAll,
                                                      progressColor:
                                                          Colors.orange,
                                                    ),
                                                    SizedBox(
                                                      height: AddSize.size20,
                                                    ),
                                                    LinearPercentIndicator(
                                                      width: 180,
                                                      animation: true,
                                                      lineHeight: 5.0,
                                                      animationDuration: 2500,
                                                      percent: 0.2,
                                                      linearStrokeCap:
                                                          LinearStrokeCap
                                                              .roundAll,
                                                      progressColor: Colors.red,
                                                    ),
                                                    SizedBox(
                                                      height: AddSize.size15,
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                            Divider(
                                              thickness: .5,
                                              color: AppTheme.subText
                                                  .withOpacity(.5),
                                            ),
                                            Column(
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  100)),
                                                      child: Image.asset(
                                                        'assets/images/onboarding1.png',
                                                        width: AddSize.size50,
                                                        height: AddSize.size50,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                    addWidth(20),
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        AddText(
                                                          text:
                                                              'Abhishek Jangid',
                                                          color:
                                                              AppTheme.userText,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize:
                                                              AddSize.font18,
                                                        ),
                                                        SizedBox(
                                                          height:
                                                              AddSize.size10,
                                                        ),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceEvenly,
                                                          children: [
                                                            Image.asset(
                                                              'assets/icons/star.png',
                                                              width: AddSize
                                                                  .size15,
                                                              height: AddSize
                                                                  .size15,
                                                              fit: BoxFit.cover,
                                                            ),
                                                            addWidth(10),
                                                            Image.asset(
                                                              'assets/icons/star.png',
                                                              width: AddSize
                                                                  .size15,
                                                              height: AddSize
                                                                  .size15,
                                                              fit: BoxFit.cover,
                                                            ),
                                                            addWidth(10),
                                                            Image.asset(
                                                              'assets/icons/star.png',
                                                              width: AddSize
                                                                  .size15,
                                                              height: AddSize
                                                                  .size15,
                                                              fit: BoxFit.cover,
                                                            ),
                                                            addWidth(10),
                                                            Image.asset(
                                                              'assets/icons/star.png',
                                                              width: AddSize
                                                                  .size15,
                                                              height: AddSize
                                                                  .size15,
                                                              fit: BoxFit.cover,
                                                            ),
                                                            addWidth(10),
                                                            Image.asset(
                                                              'assets/icons/star.png',
                                                              width: AddSize
                                                                  .size15,
                                                              height: AddSize
                                                                  .size15,
                                                              fit: BoxFit.cover,
                                                              color: Colors
                                                                  .orange
                                                                  .withOpacity(
                                                                      .2),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      width: AddSize.size18,
                                                    ),
                                                    AddText(
                                                      text: 'Oct 23, 2022',
                                                      color: AppTheme.userText
                                                          .withOpacity(.5),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: AddSize.font14,
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: AddSize.size18,
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    left: AddSize.size10 * 6,
                                                  ),
                                                  child: SecondHalf.isEmpty
                                                      ? Text(
                                                          firstHalf,
                                                          style: TextStyle(
                                                              height: 1,
                                                              color: AppTheme
                                                                  .subText
                                                                  .withOpacity(
                                                                      .5)),
                                                        )
                                                      : Column(
                                                          children: <Widget>[
                                                            Text(
                                                              flag
                                                                  ? (firstHalf +
                                                                      "...")
                                                                  : (firstHalf +
                                                                      SecondHalf),
                                                              style: TextStyle(
                                                                  height: 1.5,
                                                                  color: AppTheme
                                                                      .subText
                                                                      .withOpacity(
                                                                          .5)),
                                                            ),
                                                            InkWell(
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                children: <
                                                                    Widget>[
                                                                  Text(
                                                                    flag
                                                                        ? "Read more"
                                                                        : "Read less",
                                                                    style: TextStyle(
                                                                        color: AppTheme
                                                                            .primaryColor,
                                                                        decoration:
                                                                            TextDecoration
                                                                                .underline,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w500,
                                                                        fontSize:
                                                                            AddSize.font14),
                                                                  ),
                                                                ],
                                                              ),
                                                              onTap: () {
                                                                setState(() {
                                                                  flag = !flag;
                                                                });
                                                              },
                                                            ),
                                                          ],
                                                        ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: AddSize.size10,
                                            ),
                                            Divider(
                                              thickness: .5,
                                              color: AppTheme.subText
                                                  .withOpacity(.5),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.all(
                                                  AddSize.padding10),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    100)),
                                                        child: Image.asset(
                                                          'assets/images/onboarding1.png',
                                                          width: AddSize.size50,
                                                          height:
                                                              AddSize.size50,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      addWidth(10),
                                                      Column(
                                                        children: [
                                                          AddText(
                                                            text: 'Liyan Smith',
                                                            color: AppTheme
                                                                .userText,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize:
                                                                AddSize.font18,
                                                          ),
                                                          SizedBox(
                                                            height:
                                                                AddSize.size10,
                                                          ),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceEvenly,
                                                            children: [
                                                              Image.asset(
                                                                'assets/icons/star.png',
                                                                width: AddSize
                                                                    .size15,
                                                                height: AddSize
                                                                    .size15,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                              addWidth(10),
                                                              Image.asset(
                                                                'assets/icons/star.png',
                                                                width: AddSize
                                                                    .size15,
                                                                height: AddSize
                                                                    .size15,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                              addWidth(10),
                                                              Image.asset(
                                                                'assets/icons/star.png',
                                                                width: AddSize
                                                                    .size15,
                                                                height: AddSize
                                                                    .size15,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                              addWidth(10),
                                                              Image.asset(
                                                                'assets/icons/star.png',
                                                                width: AddSize
                                                                    .size15,
                                                                height: AddSize
                                                                    .size15,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                              addWidth(10),
                                                              Image.asset(
                                                                'assets/icons/star.png',
                                                                width: AddSize
                                                                    .size15,
                                                                height: AddSize
                                                                    .size15,
                                                                fit: BoxFit
                                                                    .cover,
                                                                color: Colors
                                                                    .orange
                                                                    .withOpacity(
                                                                        .2),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        width: AddSize.size18,
                                                      ),
                                                      AddText(
                                                        text: 'Oct 23, 2022',
                                                        color: AppTheme.userText
                                                            .withOpacity(.5),
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize:
                                                            AddSize.font14,
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: AddSize.size18,
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      left: AddSize.size10 * 6,
                                                    ),
                                                    child: SecondHalf.isEmpty
                                                        ? Text(
                                                            firstHalf,
                                                            style: TextStyle(
                                                                height: 1,
                                                                color: AppTheme
                                                                    .subText
                                                                    .withOpacity(
                                                                        .5)),
                                                          )
                                                        : Column(
                                                            children: <Widget>[
                                                              Text(
                                                                flag
                                                                    ? (firstHalf +
                                                                        "...")
                                                                    : (firstHalf +
                                                                        SecondHalf),
                                                                style: TextStyle(
                                                                    height: 1.5,
                                                                    color: AppTheme
                                                                        .subText
                                                                        .withOpacity(
                                                                            .5)),
                                                              ),
                                                              InkWell(
                                                                child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .end,
                                                                  children: <
                                                                      Widget>[
                                                                    Text(
                                                                      flag
                                                                          ? "Read more"
                                                                          : "Read less",
                                                                      style: TextStyle(
                                                                          color: AppTheme
                                                                              .primaryColor,
                                                                          decoration: TextDecoration
                                                                              .underline,
                                                                          fontWeight: FontWeight
                                                                              .w500,
                                                                          fontSize:
                                                                              AddSize.font14),
                                                                    ),
                                                                  ],
                                                                ),
                                                                onTap: () {
                                                                  setState(() {
                                                                    flag =
                                                                        !flag;
                                                                  });
                                                                },
                                                              ),
                                                            ],
                                                          ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: AddSize.size10,
                                            ),
                                            Divider(
                                              thickness: .5,
                                              color: AppTheme.subText
                                                  .withOpacity(.5),
                                            ),
                                            SizedBox(
                                              height: AddSize.size10,
                                            ),
                                            // Padding(
                                            //   padding: EdgeInsets.all(
                                            //       AddSize.padding10),
                                            //   child: Column(
                                            //     crossAxisAlignment:
                                            //         CrossAxisAlignment.center,
                                            //     children: [
                                            //       AddText(
                                            //         text: 'Leave Your Review',
                                            //         color: AppTheme.userText,
                                            //         fontWeight: FontWeight.w500,
                                            //         fontSize: AddSize.font22,
                                            //       ),
                                            //       SizedBox(
                                            //         height: AddSize.size10,
                                            //       ),
                                            //       Row(
                                            //         mainAxisAlignment:
                                            //             MainAxisAlignment
                                            //                 .center,
                                            //         children: [
                                            //           Image.asset(
                                            //             'assets/icons/star.png',
                                            //             width: AddSize.size20,
                                            //             height: AddSize.size20,
                                            //             fit: BoxFit.cover,
                                            //           ),
                                            //           addWidth(10),
                                            //           Image.asset(
                                            //             'assets/icons/star.png',
                                            //             width: AddSize.size20,
                                            //             height: AddSize.size20,
                                            //             fit: BoxFit.cover,
                                            //           ),
                                            //           addWidth(10),
                                            //           Image.asset(
                                            //             'assets/icons/star.png',
                                            //             width: AddSize.size20,
                                            //             height: AddSize.size20,
                                            //             fit: BoxFit.cover,
                                            //           ),
                                            //           addWidth(10),
                                            //           Image.asset(
                                            //             'assets/icons/star.png',
                                            //             width: AddSize.size20,
                                            //             height: AddSize.size20,
                                            //             fit: BoxFit.cover,
                                            //           ),
                                            //           addWidth(10),
                                            //           Image.asset(
                                            //             'assets/icons/star.png',
                                            //             width: AddSize.size20,
                                            //             height: AddSize.size20,
                                            //             fit: BoxFit.cover,
                                            //           ),
                                            //         ],
                                            //       ),
                                            //     ],
                                            //   ),
                                            // ),
                                            // SizedBox(
                                            //   height: AddSize.size15,
                                            // ),
                                            // Padding(
                                            //   padding: EdgeInsets.all(
                                            //       AddSize.padding10),
                                            //   child: Column(
                                            //     crossAxisAlignment:
                                            //         CrossAxisAlignment.start,
                                            //     children: [
                                            //       AddText(
                                            //         text: 'Your Comment',
                                            //         color: AppTheme.userText,
                                            //         fontWeight: FontWeight.w400,
                                            //         fontSize: AddSize.font16,
                                            //       ),
                                            //       SizedBox(
                                            //         height: AddSize.size10,
                                            //       ),
                                            //       TextFormField(
                                            //         keyboardType:
                                            //             TextInputType.multiline,
                                            //         maxLines: 8,
                                            //         decoration: InputDecoration(
                                            //             hintText: "",
                                            //             hintStyle: TextStyle(
                                            //                 color: AppTheme
                                            //                     .userText
                                            //                     .withOpacity(
                                            //                         .6)),
                                            //             border: OutlineInputBorder(
                                            //                 borderRadius:
                                            //                     BorderRadius.all(
                                            //                         Radius.circular(
                                            //                             20.0))),
                                            //             labelStyle: TextStyle(
                                            //                 color:
                                            //                     Colors.white)),
                                            //         // textAlign: TextAlign.start,
                                            //         style: const TextStyle(
                                            //           color: Colors.black,
                                            //           fontSize: 16.0,
                                            //         ),
                                            //       ),
                                            //     ],
                                            //   ),
                                            // ),
                                            // SizedBox(
                                            //   height: AddSize.size10,
                                            // ),
                                            // Center(
                                            //   child: AddButton(
                                            //     titleText: " Submit   ",
                                            //     expended: false,
                                            //   ),
                                            // ),
                                            // SizedBox(
                                            //   height: AddSize.size20,
                                            // ),
                                          ],
                                        ),
                                      )),
                            ],
                          ),
                        ][controller.tabController.index],
                      ),
                    ],
                  ),
                ),
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
        child: CommonButton('Start Now', () {
          Get.toNamed(MyRouter.lessonFirst);
        }, deviceWidth, expended: true, AddSize.size50),
      ),
    );
  }
}
