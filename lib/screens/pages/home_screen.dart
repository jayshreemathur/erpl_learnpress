import 'package:erpl_learnpress/routers/my_router.dart';
import 'package:erpl_learnpress/widgets/add_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import '../../resource/app_theme.dart';
import '../../resource/choice_chip.dart';
import '../../widgets/common_searchbar.dart';
import '../../widgets/dimentions.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List choiceChips = ChoiceChips.all;

  var percent;
  List courseNames = [
    "All Course",
    "Design",
    "Business",
    "UI/UX",
    "3D Design",
    "Other"
  ];
  int? _value = 0;
  // @override
  // void initState() {
  //   Timer timer;
  //   timer = Timer.periodic(Duration(milliseconds: 1000), (_) {
  //     setState(() {
  //       percent += 10;
  //       if (percent >= 100) {
  //         timer.cancel();
  //          percent=0;
  //       }
  //     });
  //   });
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppTheme.whitebg,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(AddSize.padding14),
            child: Container(
              height: MediaQuery.of(context).size.height * 2,
              padding: EdgeInsets.only(top: AddSize.size30),
              // margin: EdgeInsets.all(AddSize.size10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(AddSize.size10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AddText(
                              text: 'Welcome',
                              fontSize: AddSize.font18,
                              color: AppTheme.userText.withOpacity(.3),
                            ),
                            SizedBox(
                              height: AddSize.size5,
                            ),
                            AddText(
                              text: 'Joan Abraham',
                              fontSize: AddSize.font20,
                              color: AppTheme.userText,
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Get.toNamed(MyRouter.myNotifications);
                            },
                            child: Container(
                              padding: EdgeInsets.all(AddSize.padding10),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppTheme.whitebg,
                                  border: Border.all(
                                      color:
                                          AppTheme.userText.withOpacity(.3))),
                              child: Image.asset(
                                'assets/icons/notification.png',
                                width: AddSize.size20,
                                height: AddSize.size20,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: AddSize.size10,
                          ),
                          InkWell(
                            onTap: () {
                              Get.toNamed(MyRouter.myProfile);
                            },
                            child: Container(
                              //padding: EdgeInsets.all(AddSize.padding10),
                              decoration: BoxDecoration(
                                  // shape: BoxShape.circle,
                                  color: AppTheme.whitebg,
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(
                                      color:
                                          AppTheme.userText.withOpacity(.3))),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.asset(
                                  'assets/images/onboarding1.png',
                                  width: AddSize.size45,
                                  height: AddSize.size45,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: AddSize.size30,
                  ),
                  SearchBar(
                      title: 'Search any course',
                      onPressed: () {
                        Get.toNamed(MyRouter.searchedCourse);
                      }),
                  SizedBox(
                    height: AddSize.size10,
                  ),
                  Container(
                      padding: EdgeInsets.all(AddSize.size10),
                      height: AddSize.size80,
                      decoration: BoxDecoration(
                        boxShadow: blurBoxShadow,
                        color: AppTheme.whitebg,
                      ),
                      child: ListView.builder(
                          itemCount: courseNames.length,
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    Get.toNamed(MyRouter.selectedCourse,
                                        arguments: (_value));
                                  });
                                },
                                child: ChoiceChip(
                                  side: BorderSide(color: Colors.grey),
                                  backgroundColor: AppTheme.whitebg,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  label: Text(courseNames[index]),
                                  // color of selected chip
                                  selectedColor: Colors.green,
                                  disabledColor: AppTheme.whitebg,
                                  // selected chip value
                                  selected: _value == index,
                                  // onselected method
                                  onSelected: (bool selected) {
                                    setState(() {
                                      _value = selected ? index : null;
                                      Get.toNamed(MyRouter.selectedCourse,
                                          arguments: (_value.toString()));
                                    });
                                  },
                                ),
                              ),
                            );
                          })),
                  SizedBox(
                    height: AddSize.size10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: AddSize.size10, right: AddSize.size10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AddText(
                          text: 'Your Course',
                          fontSize: AddSize.font18,
                          color: AppTheme.userText,
                          fontWeight: FontWeight.bold,
                        ),
                        InkWell(
                          onTap: () {
                            Get.toNamed(MyRouter.selectedCourse);
                          },
                          child: AddText(
                            text: 'See All',
                            fontSize: AddSize.font16,
                            color: AppTheme.userText.withOpacity(.4),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: AddSize.size20,
                  ),
                  Container(
                    // padding: EdgeInsets.all(AddSize.size10),
                    height: AddSize.screenHeight * .32,
                    // width: AddSize.size200,
                    decoration: BoxDecoration(boxShadow: blurBoxShadow),
                    child: ListView.builder(
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            onTap: () {
                              Get.toNamed(MyRouter.paidCourse);
                            },
                            child: Container(
                                decoration: BoxDecoration(
                                    color: AppTheme.whitebg,
                                    boxShadow: blurBoxShadow,
                                    borderRadius:
                                        BorderRadius.circular(AddSize.size15)),
                                // width: AddSize.screenWidth,
                                height: AddSize.screenHeight * .5,
                                width: AddSize.screenWidth * .6,
                                margin: EdgeInsets.all(AddSize.size5),
                                child: Padding(
                                  padding: EdgeInsets.all(AddSize.size10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            bottom: AddSize.size15),
                                        child: ClipRRect(
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(8.0),
                                            topRight: Radius.circular(8.0),
                                            bottomLeft: Radius.circular(8.0),
                                            bottomRight: Radius.circular(8.0),
                                          ),
                                          child: Image.asset(
                                            'assets/images/onboarding1.png',
                                            width: AddSize.size300,
                                            height: AddSize.size110,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          AddText(
                                            text: 'UI/UX Development',
                                            textAlign: TextAlign.start,
                                            color: AppTheme.filtter
                                                .withOpacity(0.8),
                                            fontWeight: FontWeight.bold,
                                            fontSize: AddSize.font16,
                                          ),
                                          SizedBox(
                                            width: AddSize.size5,
                                          ),
                                          CircularPercentIndicator(
                                            radius: 30.0,
                                            lineWidth: 3.0,
                                            animation: true,
                                            percent: 0.70,
                                            center: const Text(
                                              "70.0%",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 7),
                                            ),
                                            circularStrokeCap:
                                                CircularStrokeCap.round,
                                            progressColor:
                                                AppTheme.primaryColor,
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: AddSize.size10,
                                      ),
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
                                            color: AppTheme.userText
                                                .withOpacity(.4),
                                            fontWeight: FontWeight.w500,
                                            fontSize: AddSize.font14,
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
                                )),
                          );
                        }),
                  ),
                  SizedBox(
                    height: AddSize.size30,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: AddSize.size10, right: AddSize.size10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AddText(
                          text: 'Popular Course',
                          fontSize: AddSize.font18,
                          color: AppTheme.userText,
                          fontWeight: FontWeight.bold,
                        ),
                        InkWell(
                          onTap: () {
                            Get.toNamed(MyRouter.selectedCourse);
                          },
                          child: AddText(
                            text: 'See All',
                            fontSize: AddSize.font16,
                            color: AppTheme.userText.withOpacity(.4),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ListView.builder(
                      itemCount: 3,
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                            decoration: BoxDecoration(
                                color: AppTheme.whitebg,
                                boxShadow: blurBoxShadow,
                                border: Border.all(
                                    color: AppTheme.subText.withOpacity(.5)),
                                borderRadius:
                                    BorderRadius.circular(AddSize.size15)),
                            // width: AddSize.screenWidth,
                            height: AddSize.screenHeight * .20,
                            width: AddSize.size18 * 10,
                            margin: EdgeInsets.all(AddSize.size5),
                            child: Padding(
                              padding: EdgeInsets.all(AddSize.size5),
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
                                      Row(
                                        children: [
                                          AddText(
                                            text: 'UI/UX Development',
                                            textAlign: TextAlign.start,
                                            color: AppTheme.filtter
                                                .withOpacity(0.8),
                                            fontWeight: FontWeight.bold,
                                            fontSize: AddSize.font16,
                                          ),
                                          SizedBox(
                                            width: AddSize.size25,
                                          ),
                                          Icon(
                                            Icons.favorite_border,
                                            size: AddSize.size22,
                                            color: AppTheme.primaryColor,
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: AddSize.size15,
                                      ),
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
                                      Row(
                                        children: [
                                          AddText(
                                            text: 'Free',
                                            textAlign: TextAlign.start,
                                            color: AppTheme.linkColor,
                                            fontWeight: FontWeight.w600,
                                            fontSize: AddSize.font18,
                                          ),
                                          SizedBox(
                                            width: AddSize.size40,
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                                size: AddSize.size20,
                                              ),
                                              SizedBox(width: AddSize.size5),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: AddSize.size5),
                                                child: AddText(
                                                  text: '4.9',
                                                  color: Colors.amber,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: AddSize.font16,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ));
                      }),
                  SizedBox(
                    height: AddSize.size20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: AddSize.padding10),
                    child: AddText(
                      text: 'Instructor',
                      fontSize: AddSize.font18,
                      color: AppTheme.userText,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: AddSize.size10,
                  ),
                  Container(
                    padding: EdgeInsets.all(AddSize.size5),
                    height: AddSize.size15 * 10,
                    width: AddSize.size100 * 4,
                    decoration: BoxDecoration(
                      boxShadow: blurBoxShadow,
                      // border: Border.all(color: Colors.grey)
                    ),
                    child: ListView.builder(
                        itemCount: 2,
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                              decoration: BoxDecoration(
                                  color: AppTheme.whitebg,
                                  boxShadow: blurBoxShadow,
                                  // border: Border.all(color: AppTheme.subText.withOpacity(.5)),
                                  borderRadius:
                                      BorderRadius.circular(AddSize.size15)),
                              // width: AddSize.screenWidth,
                              height: AddSize.size50,
                              width: AddSize.screenWidth * .8,
                              margin: EdgeInsets.all(AddSize.size5),
                              child: Padding(
                                padding: EdgeInsets.all(AddSize.size10),
                                child: Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.all(2),
                                      decoration: const BoxDecoration(
                                        color: Colors.black,
                                        shape: BoxShape.circle,
                                      ),
                                      height: AddSize.size80,
                                      width: AddSize.size80,
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(200),
                                        child: Image.asset(
                                          'assets/images/onboarding1.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: AddSize.size10,
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: AddSize.size5),
                                      child: Column(
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
                                            fontWeight: FontWeight.w600,
                                            fontSize: AddSize.font18,
                                          ),
                                          SizedBox(
                                            height: AddSize.size15,
                                          ),
                                          Row(
                                            children: [
                                              AddText(
                                                text: '5 Courses',
                                                textAlign: TextAlign.start,
                                                color: AppTheme.subText
                                                    .withOpacity(0.8),
                                                fontWeight: FontWeight.w400,
                                                fontSize: AddSize.font16,
                                              ),
                                              SizedBox(
                                                width: AddSize.size20,
                                              ),
                                              AddText(
                                                text: '8 Students',
                                                textAlign: TextAlign.start,
                                                color: AppTheme.subText
                                                    .withOpacity(0.8),
                                                fontWeight: FontWeight.w400,
                                                fontSize: AddSize.font16,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
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

// Widget buildChoiceChips() {
//   return Wrap(
//     runSpacing: AddSize.size20,
//     spacing: AddSize.size20,
//     children: choiceChips
//         .map((choiceChip) =>
//         ChoiceChip(
//           label: Text(choiceChip.label),
//           labelStyle:
//           TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
//           onSelected: (isSelected) {
//               setState(() {
//                 choiceChips = choiceChips.map((otherChip) {
//                   final newChip = otherChip.copy(isSelected: false);
//                   return choiceChip == newChip
//                       ? newChip.copy(isSelected: isSelected)
//                       : newChip;
//                 }).toList();
//               });
//           },
//           selected: choiceChip.isSelected,
//           selectedColor: Colors.green,
//           backgroundColor: Colors.blue,
//         ))
//         .toList(),
//   );
// }
