import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CourseController extends GetxController {
  late TabController tabController;
  RxBool isDataLoading = false.obs;
}
