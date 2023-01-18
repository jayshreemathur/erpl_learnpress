import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import '../../controllers/onboarding_controller.dart';
import '../../resource/app_theme.dart';
import '../../routers/my_router.dart';
import '../../widgets/dimentions.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  final controller = Get.put(OnBoardingController());

  @override
  Widget build(BuildContext context) {
    log("message");
    return Scaffold(
      backgroundColor: AppTheme.whitebg,
      body: Obx(() {
        return SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      //margin: EdgeInsets.only(top: AddSize.size30 * 2),
                      height: AddSize.screenHeight * 0.6,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),
                      child: PageView.builder(
                          physics: const BouncingScrollPhysics(),
                          controller: controller.pageController,
                          scrollDirection: Axis.horizontal,
                          itemCount: controller.contents.length,
                          onPageChanged: (int index) {
                            controller.currentIndex.value = index;
                          },
                          itemBuilder: (_, i) {
                            return ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                controller
                                    .contents[controller.currentIndex.value]
                                    .image
                                    .toString(),
                                width: AddSize.screenWidth * 0.8,
                                // height: AddSize.screenHeight,
                                fit: BoxFit.cover,
                              ),
                            );
                          }),
                    ),
                    Positioned(
                        top: AddSize.size50,
                        left: AddSize.padding16,
                        child: controller.currentIndex.value != 2
                            ? const Text("Skip",
                                style: TextStyle(
                                    color: Colors.transparent,
                                    decorationColor: Colors.white,
                                    shadows: [
                                      Shadow(
                                          color: Colors.white,
                                          offset: Offset(0, -10))
                                    ],
                                    decoration: TextDecoration.underline,
                                    decorationThickness: 3))
                            : const SizedBox())
                  ],
                ),
                Container(
                  // height: AddSize.screenHeight * .5 - AddSize.size30 * 2,
                  width: AddSize.screenWidth,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40.0),
                      topLeft: Radius.circular(40.0),
                    ),
                  ),
                  padding: EdgeInsets.symmetric(
                      horizontal: AddSize.padding20,
                      vertical: AddSize.padding10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(height: AddSize.size10),
                          FittedBox(
                            child: Text(
                              controller
                                  .contents[controller.currentIndex.value].title
                                  .toString(),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: AddSize.font10 * 3,
                                fontWeight: FontWeight.w700,
                                // height: 0.44,
                                color: AppTheme.headingColor,
                              ),
                            ),
                          ),
                          SizedBox(height: AddSize.size25),
                          Text(
                            controller.contents[controller.currentIndex.value]
                                .discription
                                .toString(),
                            style: TextStyle(
                              height: 1.30,
                              fontWeight: FontWeight.w300,
                              fontSize: AddSize.font16,
                              color: AppTheme.mainTextColor,
                            ),
                          ),
                          SizedBox(height: AddSize.size80),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ///dots
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: List.generate(
                                  controller.contents.length,
                                  (index) => buildDot(index, context),
                                ),
                              ),

                              ///btn
                              InkWell(
                                onTap: () {
                                  if (controller.containerWidth.value <
                                      AddSize.size80) {
                                    controller.pageController.nextPage(
                                        duration: const Duration(seconds: 1),
                                        curve: Curves.ease);
                                  } else if (controller.currentIndex1.value ==
                                      true) {
                                    Get.toNamed(MyRouter.loginScreen);
                                  }
                                },
                                child: Container(
                                    height: AddSize.size30 * 2,
                                    width: AddSize.size30 * 2,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: AppTheme.primaryColor,
                                    ),
                                    padding: const EdgeInsets.all(5),
                                    alignment: Alignment.center,
                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.white,
                                      size: AddSize.size20,
                                    )),
                              ),
                            ],
                          ),
                          Flexible(child: SizedBox(height: AddSize.size20)),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: AddSize.size10 * .6,
      width: controller.currentIndex.value == index
          ? AddSize.size30
          : AddSize.size10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: controller.currentIndex.value == index
            ? AppTheme.primaryColor
            : Colors.grey.shade300,
      ),
    );
  }
}
