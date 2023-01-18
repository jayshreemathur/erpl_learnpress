import 'package:erpl_learnpress/resource/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import '../../../../routers/my_router.dart';
import '../../../../widgets/add_text.dart';
import '../../../../widgets/common_appbar.dart';
import '../../../../widgets/common_button.dart';
import '../../../../widgets/common_textfield.dart';
import '../../../../widgets/dimentions.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final InputBorder commonBorder = OutlineInputBorder(
      borderSide:
          BorderSide(width: 0.6, color: AppTheme.subText.withOpacity(.3)),
      borderRadius: BorderRadius.circular(AddSize.size10));

  final TextEditingController emailController = TextEditingController();

  final maintext = "Please enter your new password.";

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var deviceWidth = AddSize.screenHeight;
    return Scaffold(
      backgroundColor: AppTheme.whitebg,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AddSize.size100 * .82),
        child: CustomAppbar(
          titleText: 'Reset Password',
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
                      image: AssetImage("assets/images/changePass.png"),
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
                      text: 'Reset Password',
                      textAlign: TextAlign.center,
                      color: AppTheme.userText,
                      fontWeight: FontWeight.w600,
                      fontSize: AddSize.font24,
                    ),
                    SizedBox(
                      height: AddSize.size10,
                    ),
                    AddText(
                      text: maintext,
                      color: AppTheme.userText,
                      fontWeight: FontWeight.w400,
                      height: 1.20,
                      fontSize: AddSize.font16,
                    ),
                    SizedBox(
                      height: AddSize.size20,
                    ),
                    AddText(
                      text: 'New Password',
                      color: AppTheme.userText,
                      fontWeight: FontWeight.w500,
                      height: 1.20,
                      fontSize: AddSize.font18,
                    ),
                    SizedBox(
                      height: AddSize.size10,
                    ),
                    CommonTextFieldWidget(
                      controller: emailController,
                      hint: 'New password',
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
                      text: 'Confirm Password',
                      color: AppTheme.userText,
                      fontWeight: FontWeight.w500,
                      height: 1.20,
                      fontSize: AddSize.font18,
                    ),
                    SizedBox(
                      height: AddSize.size10,
                    ),
                    CommonTextFieldWidget(
                      controller: emailController,
                      hint: 'Confirm password',
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      bgColor: AppTheme.textfield.withOpacity(0.5),
                      validator: MultiValidator([
                        EmailValidator(errorText: 'Enter Valid Email'),
                        RequiredValidator(errorText: 'Please Enter Email ID'),
                      ]),
                    ),
                    SizedBox(
                      height: AddSize.size80,
                    ),
                    Center(
                      child: CommonButton('Save Password', () {
                        Get.toNamed(MyRouter.changePassword);
                      }, deviceWidth, expended: true, AddSize.size50),
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
