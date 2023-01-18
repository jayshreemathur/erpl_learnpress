import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../resource/app_theme.dart';
import '../../widgets/add_text.dart';
import '../../widgets/common_appbar.dart';
import '../../widgets/dimentions.dart';

class SingleNotification extends StatelessWidget {
  const SingleNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final message =
        " It is a long established fact that a reader will be racted by the readable content of a page when looking at its layout.";

    final heading = 'Thank you purchase website design course';

    return Scaffold(
      backgroundColor: AppTheme.whitebg,
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
          padding: EdgeInsets.all(AddSize.padding16),
          child: Column(
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(100)),
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
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                          color: AppTheme.userText.withOpacity(.5),
                          fontWeight: FontWeight.w400,
                          fontSize: AddSize.font16,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: AddSize.size20,
              ),
              AddText(
                text: message,
                color: AppTheme.subText.withOpacity(.5),
                fontWeight: FontWeight.w400,
                height: 1.4,
                fontSize: AddSize.font16,
              ),
              SizedBox(
                height: AddSize.size10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
