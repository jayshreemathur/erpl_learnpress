import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';

import '../../resource/app_theme.dart';
import '../../routers/my_router.dart';
import '../../utils/images.dart';
import '../../widgets/add_text.dart';
import '../../widgets/common_button.dart';
import '../../widgets/common_button2.dart';
import '../../widgets/common_textfield.dart';
import '../../widgets/dimentions.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppTheme.whitebg,
      body: Form(
        key: formKey,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              color: AppTheme.primaryColor,
              height: AddSize.screenHeight * 2,
              child: Stack(
                children: [
                  Container(
                      // padding: EdgeInsets.all(30),
                      margin: EdgeInsets.only(top: AddSize.size15),
                      // padding: EdgeInsets.only(top: AddSize.size20),
                      color: AppTheme.primaryColor,
                      //height: AddSize.screenHeight * .2,
                      // width: AddSize.screenWidth,
                      child: Stack(
                        children: [
                          Image.asset(
                            "assets/images/bg.png",
                            height: AddSize.screenHeight * .5,
                            width: AddSize.screenWidth * 2,
                            fit: BoxFit.cover,
                          ),
                          Positioned(
                              top: -30,
                              left: AddSize.size20 * 5,
                              right: 0,
                              child: Container(
                                height: MediaQuery.of(context).size.height / 4,
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "assets/images/logo.png",
                                      height: AddSize.size10 * 7,
                                      width: AddSize.size10 * 7,
                                      fit: BoxFit.contain,
                                    ),
                                    SizedBox(
                                      width: AddSize.size10,
                                    ),
                                    Image.asset(
                                      "assets/images/textmain2.png",
                                      height: AddSize.size10 * 6,
                                      width: AddSize.size110,
                                      fit: BoxFit.contain,
                                    ),
                                  ],
                                ),
                              ))
                        ],
                      )),
                  Positioned(
                    top: AddSize.size30 * 5,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      // margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white.withOpacity(0.5),
                              spreadRadius: 10,
                              blurRadius: 1,
                              blurStyle: BlurStyle.solid,
                              offset:
                                  Offset(1, 1), // changes position of shadow
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20))),
                      width: MediaQuery.of(context).size.width,
                      // height: AddSize.screenHeight * .4,
                      margin: EdgeInsets.only(top: AddSize.size10),
                      padding: EdgeInsets.only(
                        // top: AddSize.size10,
                        left: AddSize.size20,
                        right: AddSize.size20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: AddSize.size40,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: AddText(
                              text: "Sign Up",
                              fontSize: 30,
                              color: AppTheme.filtter,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: AddSize.size10,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: RichText(
                              text: TextSpan(
                                style: TextStyle(
                                    color: AppTheme.primaryColor,
                                    fontSize: AddSize.size15),
                                children: [
                                  TextSpan(
                                    text: 'Already a member? ',
                                    style: TextStyle(
                                        color: AppTheme.filtter,
                                        fontFamily: 'Poppins',
                                        fontSize: AddSize.size15,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  TextSpan(
                                      text: 'Sign In ',
                                      style: TextStyle(
                                          fontSize: AddSize.size15,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                          decoration: TextDecoration.underline,
                                          color: Colors.blue),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          Get.toNamed(MyRouter.loginScreen);
                                        }),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: AddSize.size40,
                          ),
                          AddText(
                            text: "Your e-mail",
                            fontSize: AddSize.size16,
                            color: AppTheme.filtter,
                            fontWeight: FontWeight.w500,
                          ),
                          SizedBox(
                            height: AddSize.size10,
                          ),
                          CommonTextFieldWidget(
                            // controller: emailController,
                            hint: 'Enter your email',
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                            bgColor: AppTheme.textfield.withOpacity(0.5),
                            validator: MultiValidator([
                              EmailValidator(errorText: 'Enter Valid Email'),
                              RequiredValidator(
                                  errorText: 'Please Enter Email ID'),
                            ]),
                          ),
                          SizedBox(
                            height: AddSize.size30,
                          ),
                          AddText(
                            text: "Password",
                            fontSize: AddSize.size16,
                            color: AppTheme.headingColor,
                            fontWeight: FontWeight.w500,
                          ),
                          SizedBox(
                            height: AddSize.size10,
                          ),
                          CommonTextFieldWidget(
                            // controller: emailController,
                            hint: 'Enter your password',
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                            bgColor: AppTheme.textfield.withOpacity(0.5),
                            validator: MultiValidator([
                              RequiredValidator(
                                  errorText: 'password is required'),
                              MinLengthValidator(8,
                                  errorText:
                                      'password must be at least 8 digits long'),
                              PatternValidator(
                                  r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&_])[A-Za-z\d@$!%*?&_]{8,16}$",
                                  errorText: 'Password is not valid')
                            ]),
                          ),
                          SizedBox(
                            height: AddSize.size30,
                          ),
                          AddText(
                            text: "Confirm Password",
                            fontSize: AddSize.size16,
                            color: AppTheme.headingColor,
                            fontWeight: FontWeight.w500,
                          ),
                          SizedBox(
                            height: AddSize.size10,
                          ),
                          CommonTextFieldWidget(
                            // controller: emailController,
                            hint: 'Repeat your password',
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                            bgColor: AppTheme.textfield.withOpacity(0.5),
                            validator: MultiValidator([
                              RequiredValidator(
                                  errorText: 'password is required'),
                              MinLengthValidator(8,
                                  errorText:
                                      'password must be at least 8 digits long'),
                              PatternValidator(
                                  r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&_])[A-Za-z\d@$!%*?&_]{8,16}$",
                                  errorText: 'Password is not valid')
                            ]),
                          ),
                          SizedBox(
                            height: AddSize.size25,
                          ),
                          CommonButtonField('Sign Up', () {
                            if (formKey.currentState!.validate()) {
                              Get.toNamed(MyRouter.loginScreen);
                            }
                          }, deviceWidth, AddSize.size50),
                          addHeight(20),
                          Container(
                              height: 10,
                              width: MediaQuery.of(context).size.width,
                              child: Image.asset(Igs.orImg)),
                          addHeight(20),
                          FittedBox(
                            child: Row(
                              children: [
                                Container(
                                  height: 50,
                                  width: MediaQuery.of(context).size.width / 2,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(Igs.gmailImgBox))),
                                ),
                                addWidth(5),
                                Container(
                                  width: MediaQuery.of(context).size.width / 2,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(Igs.appleImgBox))),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
