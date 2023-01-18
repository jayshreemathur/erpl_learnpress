import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../resource/app_theme.dart';
import '../../routers/my_router.dart';
import '../../widgets/add_text.dart';
import '../../widgets/common_appbar.dart';
import '../../widgets/common_button.dart';
import '../../widgets/dimentions.dart';

class CheckoutScreen extends StatefulWidget {
  CheckoutScreen({Key? key}) : super(key: key);

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  List method = ["paypal", "payment card"];

  String? selectedMethod;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AddSize.size100 * .82),
        child: CustomAppbar(
          titleText: 'Checkout',
          isLikeButton: false,
          isProfileImage: false,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AddSize.padding16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  decoration: BoxDecoration(
                      color: AppTheme.whitebg,
                      boxShadow: blurBoxShadow,
                      //border: Border.all(color: AppTheme.subText.withOpacity(.5)),
                      borderRadius: BorderRadius.circular(AddSize.size15)),
                  // width: AddSize.screenWidth,
                  height: AddSize.screenHeight * .18,
                  width: AddSize.screenWidth,
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
                            width: AddSize.size110,
                            height: AddSize.size125,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: AddSize.size15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: AddSize.size15,
                            ),
                            AddText(
                              text: 'UI/UX Development',
                              textAlign: TextAlign.start,
                              color: AppTheme.filtter.withOpacity(0.8),
                              fontWeight: FontWeight.w500,
                              fontSize: AddSize.font16,
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
                                  color: AppTheme.userText.withOpacity(.4),
                                  fontWeight: FontWeight.w500,
                                  fontSize: AddSize.font14,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: AddSize.size15,
                            ),
                            AddText(
                              text: '\$${155}',
                              textAlign: TextAlign.start,
                              color: AppTheme.linkColor,
                              fontWeight: FontWeight.w600,
                              fontSize: AddSize.font18,
                            ),
                          ],
                        )
                      ],
                    ),
                  )),
              SizedBox(
                height: AddSize.size20,
              ),
              Container(
                decoration: BoxDecoration(
                    color: AppTheme.whitebg,
                    boxShadow: blurBoxShadow,
                    //border: Border.all(color: AppTheme.subText.withOpacity(.5)),
                    borderRadius: BorderRadius.circular(AddSize.size15)),
                // width: AddSize.screenWidth,
                height: AddSize.screenHeight * .10,
                width: AddSize.screenWidth,
                padding: EdgeInsets.all(AddSize.size20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AddText(
                      text: 'Total Amount',
                      textAlign: TextAlign.start,
                      color: AppTheme.filtter,
                      fontWeight: FontWeight.w600,
                      fontSize: AddSize.font16,
                    ),
                    AddText(
                      text: '\$${155}',
                      textAlign: TextAlign.start,
                      color: AppTheme.filtter,
                      fontWeight: FontWeight.w500,
                      fontSize: AddSize.font16,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: AddSize.size20,
              ),
              AddText(
                text: 'Select the payment method',
                textAlign: TextAlign.start,
                color: AppTheme.filtter,
                fontWeight: FontWeight.w500,
                fontSize: AddSize.font18,
              ),
              SizedBox(
                height: AddSize.size20,
              ),
              Container(
                decoration: BoxDecoration(
                    color: AppTheme.whitebg,
                    boxShadow: blurBoxShadow,
                    //border: Border.all(color: AppTheme.subText.withOpacity(.5)),
                    borderRadius: BorderRadius.circular(AddSize.size15)),
                // width: AddSize.screenWidth,
                height: AddSize.screenHeight * .10,
                width: AddSize.screenWidth,
                padding: EdgeInsets.all(AddSize.size20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      'assets/icons/pdf.png',
                      width: AddSize.size40,
                      height: AddSize.size40,
                      // fit: BoxFit.cover,
                    ),
                    // SizedBox(
                    //   width: AddSize.size10,
                    // ),
                    AddText(
                      text: 'PayPal',
                      textAlign: TextAlign.start,
                      color: AppTheme.filtter,
                      fontWeight: FontWeight.w500,
                      fontSize: AddSize.font16,
                    ),
                    SizedBox(
                      width: AddSize.size25,
                    ),
                    addRadioButton(
                      0,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: AddSize.size20,
              ),
              Container(
                decoration: BoxDecoration(
                    color: AppTheme.whitebg,
                    boxShadow: blurBoxShadow,
                    //border: Border.all(color: AppTheme.subText.withOpacity(.5)),
                    borderRadius: BorderRadius.circular(AddSize.size15)),
                // width: AddSize.screenWidth,
                height: AddSize.screenHeight * .10,
                width: AddSize.screenWidth,
                padding: EdgeInsets.all(AddSize.size20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      'assets/icons/strip.png',
                      width: AddSize.size40,
                      height: AddSize.size40,
                      // fit: BoxFit.cover,
                    ),
                    // SizedBox(
                    //   width: AddSize.size10,
                    // ),
                    AddText(
                      text: '**** **** **** 0007',
                      textAlign: TextAlign.start,
                      color: AppTheme.filtter,
                      fontWeight: FontWeight.w500,
                      fontSize: AddSize.font16,
                    ),
                    SizedBox(
                      width: AddSize.size25,
                    ),
                    addRadioButton(
                      1,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: YourButtonWidget(),
    );
  }

  Row addRadioButton(int btnValue) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Radio<String>(
          activeColor: AppTheme.primaryColor,
          value: method[btnValue],
          groupValue: selectedMethod,
          onChanged: (value) {
            setState(() {
              print(value);
              selectedMethod = value;
            });
          },
        ),
      ],
    );
  }

  Widget YourButtonWidget() {
    var deviceWidth = AddSize.screenWidth;
    return Container(
      height: AddSize.screenHeight * .1,
      width: AddSize.screenWidth,
      color: AppTheme.whitebg,
      child: Center(
        child: CommonButton('Buy Now', () {
          Get.toNamed(MyRouter.paymentSuccessful);
        }, deviceWidth, expended: true, AddSize.size50),
      ),
    );
  }
}
