import 'package:erpl_learnpress/routers/my_router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../resource/app_theme.dart';
import '../../widgets/add_text.dart';
import '../../widgets/common_appbar.dart';
import '../../widgets/dimentions.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    final heading = 'Thank you purchase website design course';

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AddSize.size100 * .82),
        child: CustomAppbar(
          titleText: 'Notification',
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
                        return Padding(
                          padding: EdgeInsets.all(AddSize.padding16),
                          child: InkWell(
                            onTap: () {
                              Get.toNamed(MyRouter.myMessage);
                            },
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(100)),
                                      child: Image.asset(
                                        'assets/images/onboarding1.png',
                                        width: AddSize.size50,
                                        height: AddSize.size50,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(
                                      width: AddSize.size20,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          AddText(
                                            text: heading,
                                            color: AppTheme.filtter,
                                            fontWeight: FontWeight.w500,
                                            fontSize: AddSize.font18,
                                          ),
                                          SizedBox(
                                            height: AddSize.size10,
                                          ),
                                          AddText(
                                            text: '24 july 22 at 09:15 AM',
                                            color: AppTheme.userText
                                                .withOpacity(.5),
                                            fontWeight: FontWeight.w400,
                                            fontSize: AddSize.font16,
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
                                  thickness: 1,
                                  color: AppTheme.subText.withOpacity(.2),
                                )
                              ],
                            ),
                          ),
                        );
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
                        return Padding(
                          padding: EdgeInsets.all(AddSize.padding16),
                          child: InkWell(
                            onTap: () {
                              Get.toNamed(MyRouter.myMessage);
                            },
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      padding:
                                          EdgeInsets.all(AddSize.padding10),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: AppTheme.linkColor,
                                          border: Border.all(
                                              color: AppTheme.linkColor)),
                                      child: Image.asset(
                                        'assets/icons/notification.png',
                                        width: AddSize.size20,
                                        color: AppTheme.subText,
                                        height: AddSize.size20,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    SizedBox(
                                      width: AddSize.size20,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          AddText(
                                            text: heading,
                                            color: AppTheme.filtter,
                                            fontWeight: FontWeight.w500,
                                            fontSize: AddSize.font18,
                                          ),
                                          SizedBox(
                                            height: AddSize.size10,
                                          ),
                                          AddText(
                                            text: '24 july 22 at 09:15 AM',
                                            color: AppTheme.userText
                                                .withOpacity(.5),
                                            fontWeight: FontWeight.w400,
                                            fontSize: AddSize.font16,
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
                                  thickness: 1,
                                  color: AppTheme.subText.withOpacity(.2),
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
