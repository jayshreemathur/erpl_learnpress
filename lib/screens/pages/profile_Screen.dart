import 'package:erpl_learnpress/routers/my_router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../resource/app_theme.dart';
import '../../widgets/add_text.dart';
import '../../widgets/common_appbar.dart';
import '../../widgets/dimentions.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var deviceWidth = AddSize.screenHeight;
    return Scaffold(
      backgroundColor: AppTheme.whitebg,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AddSize.size100 * .82),
        child: CustomAppbar(
          titleText: 'My Profile',
          isLikeButton: false,
          isProfileImage: false,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AddSize.padding12),
          child: Column(
            children: [
              Padding(
                padding:
                    EdgeInsets.only(left: AddSize.size20, top: AddSize.size20),
                child: Stack(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: AddSize.size18 * 10,
                          width: AddSize.size18 * 10,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: AppTheme.primaryColor)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        Positioned(
                          top: 12,
                          left: 0,
                          right: 0,
                          child: Container(
                            height: AddSize.size15 * 10,
                            width: AddSize.size15 * 10,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: AppTheme.primaryColor)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      top: 30,
                      left: 30,
                      right: 10,
                      bottom: 10,
                      child: Stack(
                        children: [
                          Container(
                            height: AddSize.size110,
                            width: AddSize.size110,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.asset(
                                'assets/images/onboarding1.png',
                                width: AddSize.screenWidth * .3,
                                height: AddSize.screenHeight * .2,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 20,
                            left: 80,
                            right: 10,
                            bottom: 70,
                            child: InkWell(
                              onTap: () {
                                Get.toNamed(MyRouter.editProfile);
                              },
                              child: Container(
                                width: AddSize.size20,
                                height: AddSize.size10,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white),
                                    borderRadius: BorderRadius.circular(100),
                                    color: AppTheme.filtter),
                                child: Icon(
                                  Icons.edit,
                                  color: AppTheme.whitebg,
                                  size: 15,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: AddSize.size20,
              ),
              Container(
                decoration: BoxDecoration(boxShadow: blurBoxShadow),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    buildInkWellImage(
                        "My Orders",
                        () => Get.toNamed(MyRouter.myOrder),
                        'assets/icons/orders.png',
                        Icons.arrow_forward_ios_rounded),
                    buildInkWellImage(
                        "My Certificates",
                        () => Get.toNamed(MyRouter.myCertificate),
                        'assets/icons/certificate.png',
                        Icons.arrow_forward_ios_rounded),
                    buildInkWellIcon(
                        "My Wishlist",
                        () => Get.toNamed(MyRouter.myWishlist),
                        Icons.favorite_border,
                        Icons.arrow_forward_ios_rounded),
                    buildInkWellImage(
                        "Edit Profile",
                        () => Get.toNamed(MyRouter.editProfile),
                        'assets/icons/edit.png',
                        Icons.arrow_forward_ios_rounded),
                    buildInkWellImage(
                        "Change Password",
                        () => Get.toNamed(MyRouter.changePassword),
                        'assets/icons/changepass.png',
                        Icons.arrow_forward_ios_rounded),
                    buildInkWellImage(
                        "Log Out",
                        () => Get.toNamed('MyRouter.notificationScreen'),
                        'assets/icons/logout.png',
                        Icons.arrow_forward_ios_rounded),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

GestureDetector buildInkWellImage(text, onTap, imagePath, icon) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
        margin: EdgeInsets.only(top: AddSize.padding16),
        decoration:
            BoxDecoration(color: Colors.white, boxShadow: blurBoxShadow),
        child: Padding(
          padding: EdgeInsets.all(AddSize.padding12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(AddSize.padding10),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppTheme.primaryColor.withOpacity(.15)),
                    child: Image.asset(
                      imagePath,
                      width: AddSize.size20,
                      height: AddSize.size20,
                    ),
                  ),
                  SizedBox(width: AddSize.size16),
                  AddText(
                    text: text,
                    color: AppTheme.userText,
                    fontSize: AddSize.font18,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
              Icon(
                icon,
                color: AppTheme.primaryColor,
                size: AddSize.size20,
              )
            ],
          ),
        )),
  );
}

GestureDetector buildInkWellIcon(text, onTap, icon, icon2) {
  return GestureDetector(
    ///
    onTap: onTap,
    child: Container(
        margin: EdgeInsets.only(top: AddSize.padding16),
        decoration:
            BoxDecoration(color: Colors.white, boxShadow: blurBoxShadow),
        child: Padding(
          padding: EdgeInsets.all(AddSize.padding12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                      padding: EdgeInsets.all(AddSize.padding10),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppTheme.primaryColor.withOpacity(.15)),
                      child: Icon(
                        icon,
                        color: AppTheme.primaryColor,
                        size: AddSize.size20,
                      )),
                  SizedBox(width: AddSize.size16),
                  AddText(
                    text: text,
                    color: AppTheme.userText,
                    fontSize: AddSize.font18,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
              Icon(
                icon2,
                color: AppTheme.primaryColor,
                size: AddSize.size20,
              )
            ],
          ),
        )),
  );
}
