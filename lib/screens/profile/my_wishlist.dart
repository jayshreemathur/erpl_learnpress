import 'package:erpl_learnpress/routers/my_router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../resource/app_theme.dart';
import '../../widgets/add_text.dart';
import '../../widgets/common_appbar.dart';
import '../../widgets/common_searchfield.dart';
import '../../widgets/dimentions.dart';

class MyWishlist extends StatelessWidget {
  const MyWishlist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var deviceWidth = AddSize.screenHeight;
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AddSize.size100 * .82),
        child: CustomAppbar(
          titleText: 'My Wishlist',
          isLikeButton: false,
          isProfileImage: false,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AddSize.padding18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: AddSize.size10,
              ),
              ListView.builder(
                  itemCount: 4,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        //Get.toNamed(MyRouter.singleCourse);
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              color: AppTheme.whitebg,
                              boxShadow: blurBoxShadow,
                              borderRadius:
                                  BorderRadius.circular(AddSize.size15)),
                          // width: AddSize.screenWidth,
                          // height: AddSize.screenHeight,
                          width: AddSize.size200,
                          margin: EdgeInsets.all(AddSize.size5),
                          child: Padding(
                            padding: EdgeInsets.all(AddSize.size15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          bottom: AddSize.size15),
                                      child: ClipRRect(
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(8.0),
                                          topRight: Radius.circular(8.0),
                                          bottomLeft: Radius.circular(8.0),
                                          bottomRight: Radius.circular(8.0),
                                        ),
                                        child: Image.asset(
                                          'assets/images/onboarding1.png',
                                          width: AddSize.size100 * 4,
                                          height: AddSize.size100 * 2,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      child: Align(
                                        alignment: Alignment.topRight,
                                        child: Padding(
                                          padding:
                                              EdgeInsets.all(AddSize.size10),
                                          child: Container(
                                              width: AddSize.size45,
                                              height: AddSize.size45,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  color: AppTheme.whitebg
                                                      .withOpacity(.8)),
                                              child: Icon(
                                                Icons.favorite,
                                                size: AddSize.size25,
                                                color: AppTheme.primaryColor,
                                              )),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    AddText(
                                      text: 'How to install wordpress',
                                      textAlign: TextAlign.start,
                                      color: AppTheme.filtter.withOpacity(0.8),
                                      fontWeight: FontWeight.w500,
                                      fontSize: AddSize.font18,
                                    ),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        SizedBox(width: AddSize.size5),
                                        AddText(
                                          text: '4.9',
                                          color: Colors.amber,
                                          fontWeight: FontWeight.w600,
                                          fontSize: AddSize.font16,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: AddSize.size10,
                                ),
                                Row(
                                  children: [
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
                                          color:
                                              AppTheme.userText.withOpacity(.4),
                                          fontWeight: FontWeight.w500,
                                          fontSize: AddSize.font14,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: AddSize.size30,
                                    ),
                                    Row(
                                      children: [
                                        Image.asset(
                                          'assets/icons/img.png',
                                          height: AddSize.size20,
                                          width: AddSize.size20,
                                        ),
                                        SizedBox(
                                          width: AddSize.size10,
                                        ),
                                        AddText(
                                          text: '67',
                                          textAlign: TextAlign.start,
                                          color:
                                              AppTheme.userText.withOpacity(.4),
                                          fontWeight: FontWeight.w500,
                                          fontSize: AddSize.font14,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: AddSize.size10,
                                ),
                                AddText(
                                  text: 'Free',
                                  textAlign: TextAlign.start,
                                  color: AppTheme.linkColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: AddSize.font16,
                                ),
                              ],
                            ),
                          )),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
