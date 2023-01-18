import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import '../../resource/app_theme.dart';
import '../../routers/my_router.dart';
import '../../widgets/add_text.dart';
import '../../widgets/common_appbar.dart';
import '../../widgets/common_button.dart';
import '../../widgets/common_textfield.dart';
import '../../widgets/dimentions.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController lastController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  String dateInput11 = "";

  @override
  Widget build(BuildContext context) {
    var deviceWidth = AddSize.screenHeight;
    return Scaffold(
      backgroundColor: AppTheme.whitebg,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AddSize.size100 * .82),
        child: CustomAppbar(
          titleText: 'Edit Profile',
          isLikeButton: false,
          isProfileImage: false,
        ),
      ),
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(AddSize.padding16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AddText(
                  text: 'Personal Information',
                  fontSize: AddSize.font18,
                  color: AppTheme.filtter,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(
                  height: AddSize.size30,
                ),
                buildTextEditingField(
                  'First Name',
                  'First Name',
                  nameController,
                  'Please enter valid name',
                  'Please enter first name',
                ),
                buildTextEditingField(
                  'Last Name',
                  'Last Name',
                  lastController,
                  'Please enter valid last name',
                  'Please enter last name',
                ),
                buildTextEditingField(
                  'Your-e-mail',
                  'Email Address',
                  emailController,
                  'Please enter valid last name',
                  'Please enter last name',
                ),
                AddText(
                  text: 'Date of Birth',
                  fontSize: AddSize.font16,
                  color: AppTheme.filtter,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(
                  height: AddSize.size10,
                ),
                CommonTextFieldWidget(
                  suffix: InkWell(
                    onTap: () async {
                      DateTime? _selectedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1950),
                          //DateTime.now() - not to allow to choose before today.
                          lastDate: DateTime(2101));
                      if (_selectedDate != null) {
                        print(_selectedDate);
                        dateInput11 = _selectedDate.toString();
                        print(dateInput11);
                        String formattedDate =
                            DateFormat.yMMMMd('en_US').format(_selectedDate);
                        print(formattedDate);
                        setState(() {
                          dobController.text =
                              formattedDate; //set output date to TextField value.
                          dobController.text = formattedDate;
                        });
                      } else {
                        print("Date is not selected");
                      }
                    },
                    child: Icon(
                      Icons.calendar_today_outlined,
                      size: AddSize.size18,
                      color: AppTheme.primaryColor,
                    ),
                  ),
                  controller: dobController,
                  readOnly: true,
                  hint: 'Date of birth',
                  // prefix: Icon(Icons.access_time_rounded),
                  // keyboardType: TextInputType.,
                  textInputAction: TextInputAction.next,
                  bgColor: AppTheme.textfield.withOpacity(0.5),
                  validator: MultiValidator([
                    RequiredValidator(errorText: 'Please select Date'),
                  ]),
                ),
                SizedBox(
                  height: AddSize.size15,
                ),
                SizedBox(height: AddSize.size125),
                SizedBox(),
                buildTextEditingField(
                  'Address',
                  'Address',
                  addressController,
                  'Please enter valid last name',
                  'Please enter last name',
                ),
                SizedBox(
                  height: AddSize.size25,
                ),
                Center(
                  child: CommonButton('Save Changes', () {
                    if (formKey.currentState!.validate()) {
                      Get.toNamed(MyRouter.myProfile);
                    }
                  }, deviceWidth, expended: true, AddSize.size50),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget buildTextEditingField(
    title, hintText, ControllerValue, errorText, requiredText) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      AddText(
        text: title,
        fontSize: AddSize.font16,
        color: AppTheme.filtter,
        fontWeight: FontWeight.w500,
      ),
      SizedBox(
        height: AddSize.size15,
      ),
      CommonTextFieldWidget(
        controller: ControllerValue,
        hint: hintText,
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.next,
        bgColor: AppTheme.textfield.withOpacity(0.5),
        validator: MultiValidator([
          // EmailValidator(errorText: errorText),
          RequiredValidator(errorText: requiredText),
        ]),
      ),
      SizedBox(
        height: AddSize.size22,
      ),
    ],
  );
}
