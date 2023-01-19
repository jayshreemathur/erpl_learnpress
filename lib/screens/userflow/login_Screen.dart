import 'package:erpl_learnpress/widgets/add_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import '../../resource/app_theme.dart';
import '../../routers/my_router.dart';
import '../../utils/images.dart';
import '../../widgets/common_button2.dart';
import '../../widgets/common_textfield.dart';
import '../../widgets/dimentions.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppTheme.primaryColor,
      body: Form(
        key: formKey,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              color: AppTheme.primaryColor,
              height: MediaQuery.of(context).size.height,
              child: Stack(
                children: [
                  Container(
                      // padding: EdgeInsets.all(30),
                      margin: EdgeInsets.only(top: AddSize.size15),
                      color: AppTheme.primaryColor,
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
                      height: MediaQuery.of(context).size.height * .4,
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: [
                              Container(decoration: BoxDecoration(

                                borderRadius: BorderRadius.all(Radius.circular(5))
                                  ,
                                border: Border.all(width: 1.5,color: Colors.green)
                              ),
                              child: Text("Visit",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 16),),
                              ),

                              Container(decoration: BoxDecoration(

                                  borderRadius: BorderRadius.all(Radius.circular(5))
                                  ,
                                  border: Border.all(width: 1.5,color: Colors.green)
                              ),
                                child: Text("Help",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 16),),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: AddSize.size20,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: AddText(
                                text: "Sign In",
                                fontSize: AddSize.size10 * 3,
                                color: AppTheme.headingColor,
                                fontWeight: FontWeight.bold),
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
                                    text: "Don't have an account? ",
                                    style: TextStyle(
                                        color: AppTheme.filtter,
                                        fontFamily: 'Poppins',
                                        fontSize: AddSize.size15,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  TextSpan(
                                      text: 'Register ',
                                      style: TextStyle(
                                        fontSize: AddSize.font16,
                                        color: AppTheme.linkColor,
                                        fontFamily: 'Poppins',
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
                            color: AppTheme.filtter,
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
                              // PatternValidator(
                              //     r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&_])[A-Za-z\d@$!%*?&_]{8,16}$",
                              //     errorText: 'Password is not valid')
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
                                fontSize: AddSize.size14,
                                decoration: TextDecoration.underline,
                                color: AppTheme.linkColor,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: AddSize.size40,
                          ),
                          CommonButtonField('Sign In', () {
                            if (formKey.currentState!.validate()) {
                              Get.toNamed(MyRouter.bottomNavbar);
                            }
                          }, deviceWidth, AddSize.size50),
                          addHeight(30),
                          Container(
                              height: 10,
                              width: MediaQuery.of(context).size.width,
                              child: Image.asset(Igs.orImg)),
                          addHeight(30),
                          FittedBox(
                            child: Row(
                              children: [
                                Container(
                                  height: 40,
                                  width: MediaQuery.of(context).size.width / 2,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(Igs.gmailImgBox))),
                                ),
                                addWidth(5),
                                Container(
                                  width: MediaQuery.of(context).size.width / 2,
                                  height: 40,
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
