import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/dimentions.dart';

class OnBoardingController extends GetxController {
  PageController pageController = PageController();

  RxList<UnbordingContent> contents = [
    UnbordingContent(
        image: 'assets/images/onboarding1.png',
        title: "Welcome To ERPL",
        discription:
            "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout."),
    UnbordingContent(
        image: 'assets/images/onboarding2.png',
        title: "Communicate with \na tutor.",
        discription:
            "It is a long established fact that a reader will be distracted by the readable."),
    UnbordingContent(
        image: 'assets/images/onboarding3.png',
        title: "Stay safe, \nLearn at home!",
        discription:
            "It is a long established fact that a reader will be distracted by the readable."),
  ].obs;

  RxInt currentIndex = 0.obs;
  RxBool currentIndex1 = false.obs;
  RxDouble fontSize = 2.0.obs;

  RxDouble containerWidth = (AddSize.size30 * 2).obs;

  @override
  void onInit() {
    super.onInit();

    double value1 = 0;
    double value132 = 0;
    pageController.addListener(() {
      if (pageController.page!.toDouble() > 1.0) {
        currentIndex1.value = true;
        var value2 = pageController.page!.toDouble() - 1;
        value1 = AddSize.size30 * 2 * value2 * 3;
        value132 = value2 * 3;
        containerWidth.value = AddSize.size30 * 2 + value1;
        fontSize.value = 6 * value132 > 1 ? 6 * value132 : 1;
      } else {
        currentIndex1.value = false;
      }
    });
  }
}

class UnbordingContent {
  String? image;
  String? title;
  String? discription;

  UnbordingContent({this.image, this.title, this.discription});
}
