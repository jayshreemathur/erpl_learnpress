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

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final InputBorder commonBorder = OutlineInputBorder(
      borderSide:
          BorderSide(width: 0.6, color: AppTheme.subText.withOpacity(.3)),
      borderRadius: BorderRadius.circular(AddSize.size10));

  final TextEditingController oldPassword = TextEditingController();
  final TextEditingController newPassword = TextEditingController();
  final TextEditingController confirmPassword = TextEditingController();

  final maintext = "Not remember your old password?";

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var deviceWidth = AddSize.screenHeight;
    return Scaffold(
      backgroundColor: AppTheme.whitebg,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AddSize.size100 * .82),
        child: CustomAppbar(
          titleText: 'Change Password',
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: AddSize.size20,
                    ),
                    AddText(
                      text: 'Change Your Password',
                      textAlign: TextAlign.center,
                      color: AppTheme.userText,
                      fontWeight: FontWeight.w500,
                      fontSize: AddSize.font20,
                    ),
                    SizedBox(
                      height: AddSize.size20,
                    ),
                    SizedBox(
                      height: AddSize.size20,
                    ),
                    AddText(
                      text: 'Old Password',
                      color: AppTheme.userText,
                      fontWeight: FontWeight.w500,
                      height: 1.20,
                      fontSize: AddSize.font16,
                    ),
                    SizedBox(
                      height: AddSize.size10,
                    ),
                    CommonTextFieldWidget(
                      controller: oldPassword,
                      hint: 'Old password',
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
                      text: 'New Password',
                      color: AppTheme.userText,
                      fontWeight: FontWeight.w500,
                      height: 1.20,
                      fontSize: AddSize.font16,
                    ),
                    SizedBox(
                      height: AddSize.size10,
                    ),
                    CommonTextFieldWidget(
                      controller: newPassword,
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
                      text: 'Confirm New Password',
                      color: AppTheme.userText,
                      fontWeight: FontWeight.w500,
                      height: 1.20,
                      fontSize: AddSize.font16,
                    ),
                    SizedBox(
                      height: AddSize.size10,
                    ),
                    CommonTextFieldWidget(
                      controller: confirmPassword,
                      hint: 'Confirm New password',
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
                        // Get.toNamed(MyRouter.forgotOtp);
                      }, deviceWidth, expended: true, AddSize.size50),
                    ),
                    SizedBox(
                      height: AddSize.size10,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: AddText(
                        text: maintext,
                        color: AppTheme.userText,
                        fontWeight: FontWeight.w400,
                        height: 1.20,
                        fontSize: AddSize.font14,
                      ),
                    ),
                    SizedBox(
                      height: AddSize.size12,
                    ),
                    Align(
                        alignment: Alignment.center,
                        child: Text("Forgot Password",
                            style: TextStyle(
                                fontSize: AddSize.font14,
                                color: Colors.transparent,
                                decorationColor: AppTheme.linkColor,
                                shadows: [
                                  Shadow(
                                      color: AppTheme.linkColor,
                                      offset: Offset(0, -5)),
                                ],
                                decoration: TextDecoration.underline,
                                decorationThickness: 1)))
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
