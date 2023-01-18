import 'package:erpl_learnpress/routers/my_router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../resource/app_theme.dart';
import '../../widgets/add_text.dart';
import '../../widgets/common_appbar.dart';
import '../../widgets/dimentions.dart';

class MyCertificate extends StatefulWidget {
  const MyCertificate({Key? key}) : super(key: key);

  @override
  State<MyCertificate> createState() => _MyCertificateState();
}

class _MyCertificateState extends State<MyCertificate> {
  @override
  Widget build(BuildContext context) {
    // var deviceWidth = AddSize.screenHeight;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AddSize.size100 * .82),
        child: CustomAppbar(
          titleText: 'My Certificate',
          isLikeButton: false,
          isProfileImage: false,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AddSize.padding10),
          child: ListView.builder(
              itemCount: 4,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemBuilder: (ctx, int index) {
                return MyCretifictes();
              }),
        ),
      ),
    );
  }

  Widget MyCretifictes() {
    return InkWell(
      onTap: () {
        Get.toNamed(MyRouter.myCertificate);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AddSize.size15),
          border: Border.all(color: Colors.grey.withOpacity(.5)),
        ),
        margin: EdgeInsets.all(AddSize.size10),
        child: Row(
          children: [
            Image.asset(
              'assets/icons/pdf.png',
              height: AddSize.size110,
            ),
            SizedBox(
              width: AddSize.size5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AddText(
                  text: 'Certificate',
                  fontSize: AddSize.font18,
                  color: AppTheme.userText.withOpacity(.6),
                  fontWeight: FontWeight.w400,
                ),
                SizedBox(
                  height: AddSize.size10,
                ),
                AddText(
                  text: 'WordPress Course',
                  fontSize: AddSize.font18,
                  color: AppTheme.filtter,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
            SizedBox(
              width: AddSize.size30,
            ),
            InkWell(
              onTap: () {
                Get.toNamed(MyRouter.singleCertificate);
              },
              child: Container(
                width: AddSize.size45,
                height: AddSize.size45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: AppTheme.primaryColor.withOpacity(.3)),
                child: Image.asset(
                  'assets/icons/download.png',
                  height: AddSize.size14,
                ),
              ),
            ),
            SizedBox(
              width: AddSize.size5,
            ),
          ],
        ),
      ),
    );
  }
}
