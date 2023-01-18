import 'package:erpl_learnpress/widgets/add_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../resource/app_theme.dart';
import '../../widgets/common_searchbar.dart';
import '../../widgets/dimentions.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final List<String> slide = [
    'All Course',
    'Business',
    '3D Design',
    'Android',
    'Java',
    'UI/UX Design',
    'HTML & CSS',
    'Web Development'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppTheme.backgroundColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(AddSize.padding12),
            child: Container(
              height: AddSize.screenHeight,
              padding: EdgeInsets.only(top: AddSize.size20),
              margin: EdgeInsets.all(AddSize.size10),
              child: Padding(
                padding: EdgeInsets.all(AddSize.padding10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Column(
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
                              text: 'Joan Sinha',
                              fontSize: AddSize.font20,
                              color: AppTheme.userText,
                              fontWeight: FontWeight.w500,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: AddSize.size45 * 3,
                        ),
                        Container(
                            padding: EdgeInsets.all(AddSize.padding10),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppTheme.whitebg,
                                border: Border.all(
                                    color: AppTheme.userText.withOpacity(.3))),
                            child: Icon(
                              Icons.notifications_none_outlined,
                              color: AppTheme.userText,
                              size: AddSize.size25,
                            )),
                        SizedBox(
                          width: AddSize.size10,
                        ),
                        Container(
                          padding: EdgeInsets.all(AddSize.padding10),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppTheme.whitebg,
                              border: Border.all(
                                  color: AppTheme.userText.withOpacity(.3))),
                          child: Image.asset(
                            'assets/images/onboarding1.png',
                            width: AddSize.size25,
                            height: AddSize.size25,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: AddSize.size30,
                    ),
                    SearchBar(
                      title: 'Search any course',
                    ),
                    SizedBox(
                      height: AddSize.size30,
                    ),
                    Wrap(
                      spacing: AddSize.size10,
                      children: List.generate(
                          slide.length,
                          (index) => Container(
                                decoration: BoxDecoration(
                                    color: AppTheme.fiterchip,
                                    borderRadius: BorderRadius.circular(100)),
                                margin: EdgeInsets.only(bottom: AddSize.size10),
                                padding: EdgeInsets.symmetric(
                                    horizontal: AddSize.padding14,
                                    vertical: AddSize.padding12),
                                child: AddText(
                                  text: slide.toString(),
                                ),
                              )),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
