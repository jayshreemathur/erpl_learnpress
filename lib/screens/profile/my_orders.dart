import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../resource/app_theme.dart';
import '../../routers/my_router.dart';
import '../../widgets/add_text.dart';
import '../../widgets/common_appbar.dart';
import '../../widgets/common_button.dart';
import '../../widgets/dimentions.dart';

class MyOrders extends StatefulWidget {
  const MyOrders({Key? key}) : super(key: key);

  @override
  State<MyOrders> createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AddSize.size100 * .82),
        child: CustomAppbar(
          titleText: 'My Orders',
          isLikeButton: false,
          isProfileImage: false,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AddSize.padding12),
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                // scrollDirectio?n: Axis.vertical,
                itemBuilder: (ctx, int index) {
                  return MyOrders();
                }),
          ),
        ),
      ),
    );
  }

  Widget MyOrders() {
    var deviceWidth = AddSize.screenWidth;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AddSize.size10),
        border: Border.all(color: Colors.grey.withOpacity(.5)),
      ),
      margin: EdgeInsets.all(AddSize.size12),
      child: Padding(
        padding: EdgeInsets.all(AddSize.size10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AddText(
                  text: 'Install WordPress Course',
                  fontSize: AddSize.font16,
                  color: AppTheme.filtter,
                  fontWeight: FontWeight.w500,
                ),
                Container(
                  width: AddSize.size80,
                  height: AddSize.size30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AddSize.size5),
                      color: AppTheme.primaryColor.withOpacity(.3)),
                  padding: EdgeInsets.only(top: AddSize.size10),
                  child: AddText(
                    text: 'Complete',
                    textAlign: TextAlign.center,
                    fontSize: AddSize.font14,
                    color: AppTheme.primaryColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: AddSize.size10,
            ),
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AddText(
                  text: 'Order ID : ',
                  fontSize: AddSize.font16,
                  color: AppTheme.userText,
                  fontWeight: FontWeight.w400,
                ),
                AddText(
                  text: '#001258',
                  fontSize: AddSize.font16,
                  color: AppTheme.userText.withOpacity(.5),
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),
            SizedBox(
              height: AddSize.size10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AddText(
                  text: 'Starting Date',
                  fontSize: AddSize.font16,
                  color: AppTheme.userText,
                  fontWeight: FontWeight.w400,
                ),
                AddText(
                  text: 'Ending Date',
                  fontSize: AddSize.font16,
                  color: AppTheme.userText,
                  fontWeight: FontWeight.w400,
                ),
                SizedBox(
                  width: AddSize.size10,
                )
              ],
            ),
            SizedBox(
              height: AddSize.size10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AddText(
                  text: '02 Nov 22',
                  fontSize: AddSize.font16,
                  color: AppTheme.userText.withOpacity(.5),
                  fontWeight: FontWeight.w400,
                ),
                AddText(
                  text: '10 Nov 22',
                  fontSize: AddSize.font16,
                  color: AppTheme.userText.withOpacity(.5),
                  fontWeight: FontWeight.w400,
                ),
                SizedBox(
                  width: AddSize.size10,
                )
              ],
            ),
            SizedBox(
              height: AddSize.size25,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: CommonButton('Download', () {
                Get.toNamed(MyRouter.lessonFirst);
              }, deviceWidth, expended: true, AddSize.size20),
            ),
          ],
        ),
      ),
    );
  }
}
