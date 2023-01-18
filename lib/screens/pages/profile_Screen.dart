import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../resource/app_theme.dart';
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
    );
  }
}
