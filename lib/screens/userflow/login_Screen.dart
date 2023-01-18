import 'package:erpl_learnpress/widgets/add_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import '../../resource/app_theme.dart';
import '../../routers/my_router.dart';
import '../../utils/images.dart';
import '../../widgets/common_button.dart';
import '../../widgets/common_button2.dart';
import '../../widgets/common_textfield.dart';
import '../../widgets/dimentions.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppTheme.primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: AppTheme.primaryColor,
            // height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Container(
                    padding: EdgeInsets.all(30),
                    color: AppTheme.primaryColor,
                    height: AddSize.screenHeight * 0.2,
                    child: Image.asset("assets/images/logoimg.png")),
                Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white.withOpacity(0.5),
                          spreadRadius: 10,
                          blurRadius: 1,
                          blurStyle: BlurStyle.solid,
                          offset: Offset(1, 1), // changes position of shadow
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20))),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * .8,
                  margin: EdgeInsets.only(top: AddSize.size10),
                  padding: EdgeInsets.only(
                    top: AddSize.size20,
                    left: AddSize.size20,
                    right: AddSize.size20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 5),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.green, width: 1.5),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            child: Text(
                              "Visit",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          Spacer(),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 5),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.green, width: 1.5),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            child: Text(
                              "Help",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: AddSize.size10,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: AddText(
                          text: "Sign In",
                          fontSize: 30,
                          color: AppTheme.headingColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: AddSize.size20,
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
                                text: "Don't have an account? ",
                                style: TextStyle(
                                    color: AppTheme.filtter,
                                    fontSize: AddSize.size15,
                                    fontWeight: FontWeight.w400),
                              ),
                              TextSpan(
                                  text: 'Register ',
                                  style: TextStyle(
                                    fontSize: AddSize.font16,
                                    color: AppTheme.linkColor,
                                    fontWeight: FontWeight.w500,
                                    decoration: TextDecoration.underline,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Get.toNamed(MyRouter.signupScreen);
                                    }),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: AddSize.size30,
                      ),
                      AddText(
                        text: "Your e-mail",
                        fontSize: AddSize.size16,
                        color: AppTheme.headingColor,
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
                          RequiredValidator(errorText: 'Please Enter Email ID'),
                        ]),
                      ),
                      SizedBox(
                        height: AddSize.size20,
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
                          EmailValidator(errorText: 'Enter Valid Email'),
                          RequiredValidator(errorText: 'Please Enter Email ID'),
                        ]),
                      ),
                      SizedBox(
                        height: AddSize.size20,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: InkWell(
                          onTap: () {
                            Get.toNamed(MyRouter.addemail);
                          },
                          child: AddText(
                            text: "Forgot Password",
                            fontSize: AddSize.size16,
                            decoration: TextDecoration.underline,
                            color: AppTheme.linkColor,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: AddSize.size20,
                      ),
                      CommonButtonField('Login', () {
                        Get.toNamed(MyRouter.bottomNavbar);
                      }, deviceWidth, AddSize.size50),
                      addHeight(43),
                      Container(
                          height: 10,
                          width: MediaQuery.of(context).size.width,
                          child: Image.asset(Igs.orImg)),
                      addHeight(25),
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
                                      image: AssetImage(Igs.fblImgBox))),
                            ),
                          ],
                        ),
                      ),
                      addHeight(25)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
