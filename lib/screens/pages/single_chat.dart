import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../resource/app_theme.dart';
import '../../resource/helper_class.dart';
import '../../widgets/common_appbar.dart';
import '../../widgets/dimentions.dart';
import 'message_widget.dart';

enum ImageSourceType { gallery, camera }

class UserMessages extends StatefulWidget {
  const UserMessages({Key? key}) : super(key: key);

  @override
  State<UserMessages> createState() => _UserMessagesState();
}

class _UserMessagesState extends State<UserMessages> {
  TextEditingController textController = TextEditingController();

  final String text =
      "Our motivation is to enable computerized connections through versatility. By planning and creating ";
  List messages = [];
  List reveresMessages = [];

  final Rx<File> _image = File("").obs;

  showPickImageSheet1() {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => CupertinoActionSheet(
        title: const Text(
          'Select Image',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: AppTheme.primaryColor),
        ),
        // message: const Text('Message'),
        cancelButton: CupertinoActionSheetAction(
          child: const Text('Cancel'),
          onPressed: () {
            Navigator.of(context, rootNavigator: true).pop("Cancel");
          },
        ),
        actions: <CupertinoActionSheetAction>[
          CupertinoActionSheetAction(
            child: const Text('Gallery'),
            onPressed: () async {
              Get.back();
              final item = await NewHelper().addFilePicker();
              if (item != null) {
                _image.value = item;
              }
            },
          ),
          CupertinoActionSheetAction(
            child: const Text('Camera'),
            onPressed: () async {
              Get.back();
              final item = await NewHelper().addImagePicker(
                  imageSource: ImageSource.camera, imageQuality: 50);
              if (item != null) {
                _image.value = item;
              }
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.chatbg,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AddSize.size100 * .82),
        child: CustomAppbar(
          titleText: 'Messages',
          isLikeButton: false,
          isProfileImage: false,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                reverse: true,
                physics: const BouncingScrollPhysics(),
                itemCount: reveresMessages.length,
                padding: const EdgeInsets.only(bottom: 20),
                itemBuilder: (context, index) {
                  return MessageWidget(
                    text: reveresMessages[index],
                    isMe: index % 2 == 0 ? true : false,
                  );
                }),
          ),
          Center(
            child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: AppTheme.whitebg),
                  color: AppTheme.searchfield,
                ),
                width: AddSize.screenWidth * .90,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 22, bottom: 5),
                      child: IntrinsicHeight(
                        child: Row(
                          children: [
                            Icon(
                              Icons.mic_none_outlined,
                              color: AppTheme.subText,
                              size: AddSize.size25,
                            ),
                            SizedBox(
                              width: AddSize.size5,
                            ),
                            InkWell(
                              onTap: () {
                                showPickImageSheet1();
                              },
                              child: Icon(
                                Icons.attach_file,
                                color: AppTheme.subText,
                                size: AddSize.size22,
                              ),
                            ),
                            SizedBox(
                              width: AddSize.size5,
                            ),
                            Icon(
                              Icons.face,
                              color: AppTheme.subText,
                              size: AddSize.size25,
                            ),
                            VerticalDivider(
                              color: AppTheme.filtter.withOpacity(.3),
                              thickness: 1,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(top: 12, bottom: 12, left: 12),
                        child: TextField(
                          maxLines: 1,
                          controller: textController,
                          onSubmitted: (value) {
                            print('data of value' + value);
                            if (value != "") {
                              reveresMessages.clear();
                              messages.add(value);
                              for (var item in messages.reversed) {
                                reveresMessages.add(item);
                              }
                              setState(() {
                                textController.clear();
                              });
                            }
                          },
                          style: const TextStyle(fontSize: 16),
                          decoration: const InputDecoration(
                            filled: true,
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8))),
                            fillColor: AppTheme.searchfield,
                            contentPadding: EdgeInsets.zero,
                            hintText: 'Write a message ...',
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 12, bottom: 12),
                      child: IntrinsicHeight(
                        child: Row(
                          children: [
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(color: AppTheme.whitebg),
                                color: AppTheme.primaryColor,
                              ),
                              height: AddSize.screenHeight * 0.05,
                              child: InkWell(
                                onTap: () {
                                  if (textController.text != "") {
                                    reveresMessages.clear();
                                    messages.add(textController.text);
                                    for (var item in messages.reversed) {
                                      reveresMessages.add(item);
                                    }
                                    setState(() {
                                      textController.clear();
                                    });
                                  }
                                },
                                child: Icon(
                                  Icons.send,
                                  color: AppTheme.whitebg,
                                  size: AddSize.size20,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )),
          ),
          SizedBox(
            height: AddSize.size20,
          )
        ],
      ),
    );
  }
}
