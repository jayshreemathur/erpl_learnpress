import 'package:erpl_learnpress/resource/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_pin_code_fields/flutter_pin_code_fields.dart';
import 'package:get/get.dart';
import '../../../routers/my_router.dart';
import '../../../widgets/add_text.dart';
import '../../../widgets/common_appbar.dart';
import '../../../widgets/common_button.dart';
import '../../../widgets/dimentions.dart';

class ForgotPasswordOtp extends StatefulWidget {
  const ForgotPasswordOtp({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordOtp> createState() => _ForgotPasswordOtpState();
}

class _ForgotPasswordOtpState extends State<ForgotPasswordOtp> {
  final InputBorder commonBorder = OutlineInputBorder(
      borderSide:
          BorderSide(width: 0.6, color: AppTheme.subText.withOpacity(.3)),
      borderRadius: BorderRadius.circular(AddSize.size10));

  final TextEditingController otpController = TextEditingController();

  final maintext =
      "An 4 digit code has been sent your e-mail suniljatgared9251@gmail.com’.";

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var deviceWidth = AddSize.screenHeight;
    return Scaffold(
      backgroundColor: AppTheme.whitebg,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AddSize.size100 * .82),
        child: CustomAppbar(
          titleText: 'Verification',
          isLikeButton: false,
          isProfileImage: false,
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Form(
          key: formKey,
          child: Padding(
            padding: EdgeInsets.all(AddSize.padding16),
            child: Column(
              children: [
                Container(
                  height: AddSize.size300,
                  // width: AddSize.size40,
                  decoration: const BoxDecoration(
                    // boxShadow: blurBoxShadow,
                    color: AppTheme.whitebg,
                    image: DecorationImage(
                      image: AssetImage("assets/images/forgotOtp.png"),
                      fit: BoxFit.contain,
                    ),
                  ),
                  width: AddSize.screenWidth,
                  margin: EdgeInsets.all(AddSize.size5),
                  padding: EdgeInsets.all(AddSize.size15),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: AddSize.size20,
                    ),
                    AddText(
                      text: 'Enter Your Otp',
                      textAlign: TextAlign.center,
                      color: AppTheme.userText,
                      fontWeight: FontWeight.w600,
                      fontSize: AddSize.font24,
                    ),
                    SizedBox(
                      height: AddSize.size20,
                    ),
                    AddText(
                      text: maintext,
                      color: AppTheme.userText,
                      fontWeight: FontWeight.w400,
                      height: 1.20,
                      fontSize: AddSize.font16,
                    ),
                    SizedBox(
                      height: AddSize.size25,
                    ),
                    AddText(
                      text: 'Your OTP',
                      color: AppTheme.userText,
                      fontWeight: FontWeight.w500,
                      height: 1.20,
                      fontSize: AddSize.font16,
                    ),
                    SizedBox(
                      height: AddSize.size5,
                    ),

                    ///pincode
                    // Container(
                    //   padding: EdgeInsets.only(
                    //     left: AddSize.size10,
                    //     right: AddSize.size10,
                    //   ),
                    //   child: PinCodeTextField(
                    //     appContext: context,
                    //     textStyle: TextStyle(color: AppTheme.subText),
                    //     controller: otpController,
                    //     inputFormatters: [
                    //       FilteringTextInputFormatter.digitsOnly,
                    //     ],
                    //     pastedTextStyle: TextStyle(
                    //       color: Colors.green.shade600,
                    //       fontWeight: FontWeight.bold,
                    //     ),
                    //     animationType: AnimationType.fade,
                    //     validator: (v) {
                    //       // if (v!.isEmpty) {
                    //       //   return "OTP code Required";
                    //       // } else if (v.length != 4) {
                    //       //   return "Enter complete OTP code";
                    //       // }
                    //       // return null;
                    //     },
                    //     length: 4,
                    //     pinTheme: PinTheme(
                    //       shape: PinCodeFieldShape.box,
                    //       borderRadius: BorderRadius.circular(AddSize.size30),
                    //       fieldWidth: AddSize.size50,
                    //       fieldHeight: AddSize.size50,
                    //       activeColor: AppTheme.primaryColor,
                    //       inactiveColor: AppTheme.textfield,
                    //       errorBorderColor: AppTheme.textfield,
                    //     ),
                    //     //   //runs when a code is typed in
                    //     keyboardType: TextInputType.number,
                    //     onChanged: (String VerificationCode) {
                    //       //otp = VerificationCode;
                    //     },
                    //   ),
                    // ),
                    Container(
                      // padding: EdgeInsets.all(AddSize.size),
                      child: PinCodeFields(
                        length: 4,
                        fieldBorderStyle: FieldBorderStyle.square,
                        // padding: EdgeInsets.all(AddSize.size10),
                        switchInAnimationCurve: Curves.bounceIn,
                        margin: EdgeInsets.all(AddSize.size15),
                        responsive: false,
                        fieldHeight: AddSize.size50,
                        fieldWidth: AddSize.size50,
                        borderWidth: 1.0,
                        activeBorderColor: AppTheme.primaryColor,
                        // activeBackgroundColor: Colors.pink.shade100,
                        borderRadius: BorderRadius.circular(10.0),
                        keyboardType: TextInputType.number,
                        autoHideKeyboard: false,
                        fieldBackgroundColor: Colors.white,
                        borderColor: AppTheme.primaryColor,
                        textStyle: TextStyle(
                          fontSize: AddSize.font22,
                          fontWeight: FontWeight.bold,
                        ),
                        onComplete: (output) {
                          // Your logic with pin code
                          print(output);
                        },
                      ),
                    ),
                    SizedBox(
                      height: AddSize.size30,
                    ),
                    Center(
                      child: CommonButton('Verify', () {
                        Get.toNamed(MyRouter.resetPassword);
                      }, deviceWidth, 40),
                    ),
                    SizedBox(
                      height: AddSize.size20,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
