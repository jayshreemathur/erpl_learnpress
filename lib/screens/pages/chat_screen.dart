import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../resource/app_theme.dart';
import '../../routers/my_router.dart';
import '../../widgets/add_text.dart';
import '../../widgets/common_appbar.dart';
import '../../widgets/dimentions.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);
  final String url =
      "https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=465&q=80";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AddSize.size100 * .82),
        child: CustomAppbar(
          titleText: 'Messages',
          isLikeButton: false,
          isProfileImage: false,
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: AddSize.padding14),
          decoration: BoxDecoration(boxShadow: blurBoxShadow),
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(vertical: AddSize.padding20),
            shrinkWrap: true,
            itemCount: 8,
            itemBuilder: (context, index) {
              return messages(context, index);
            },
          ),
        ),
      ),
    );
  }

  messages(BuildContext context, int index) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(MyRouter.userMessageScreen);
      },
      child: Container(
        decoration:
            BoxDecoration(boxShadow: blurBoxShadow, color: Colors.white),
        margin: EdgeInsets.only(bottom: AddSize.padding18),
        padding: EdgeInsets.all(AddSize.padding16),
        child: Row(
          children: [
            //
            Container(
                decoration: BoxDecoration(
                    color: AppTheme.primaryColor,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(url), fit: BoxFit.cover)),
                height: AddSize.size30 * 2,
                width: AddSize.size30 * 2),
            SizedBox(
              width: AddSize.size14,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AddText(
                        text: 'Anna Watson',
                        color: AppTheme.userText,
                        fontWeight: FontWeight.w500,
                        fontSize: AddSize.font18,
                      ),
                      AddText(
                        text: '12:02 AM',
                        color: AppTheme.userText.withOpacity(0.8),
                        fontWeight: FontWeight.w500,
                        fontSize: AddSize.font14,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: AddSize.size10,
                  ),
                  AddText(
                    text: 'Hello, How are you?',
                    color: AppTheme.userText.withOpacity(0.8),
                    fontWeight: FontWeight.w500,
                    fontSize: AddSize.font16,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
