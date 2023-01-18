import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routers/my_router.dart';
import '../../widgets/common_appbar.dart';
import '../../widgets/common_button.dart';
import '../../widgets/dimentions.dart';

class SingleCertificate extends StatelessWidget {
  const SingleCertificate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var deviceWidth = AddSize.screenHeight;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AddSize.size100 * .82),
        child: CustomAppbar(
          titleText: 'My Certificate',
          isLikeButton: false,
          isProfileImage: false,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AddSize.padding16),
          child: Column(
            children: [
              Image.asset(
                'assets/images/cerficate.png',
                width: AddSize.size100 * 4,
                height: AddSize.size100 * 2,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: AddSize.size30,
              ),
              Center(
                child: CommonButton('Download Certificate', () {
                  Get.toNamed(MyRouter.thankScreen); //thank you page
                }, deviceWidth, expended: true, AddSize.size25),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
