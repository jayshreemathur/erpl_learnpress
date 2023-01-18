import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../resource/app_theme.dart';
import '../../widgets/add_text.dart';
import '../../widgets/dimentions.dart';

class MessageWidget extends StatelessWidget {
  final String? text;
  final bool? isMe;
  const MessageWidget({Key? key, this.text, this.isMe = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          isMe == true ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(200),
          child: CachedNetworkImage(
            imageUrl:
                "https://dl.memuplay.com/new_market/img/com.vicman.newprofilepic.icon.2022-06-07-21-33-07.png",
            placeholder: (context, url) => SizedBox(),
            errorWidget: (context, url, error) => SizedBox(),
            width: AddSize.size30,
            height: AddSize.size30,
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(
              horizontal: AddSize.size20, vertical: AddSize.size10),
          decoration: BoxDecoration(
            color: isMe == true ? AppTheme.primaryColor : Colors.white,
            borderRadius: BorderRadius.circular(AddSize.size20).subtract(isMe ==
                    true
                ? BorderRadius.only(topRight: Radius.circular(AddSize.size20))
                : BorderRadius.only(topLeft: Radius.circular(AddSize.size20))),
          ),
          padding: EdgeInsets.all(AddSize.padding22),
          child: AddText(
            text: text,
            fontWeight: FontWeight.normal,
            color: isMe == true ? Colors.white : Colors.black,
          ),
        )
      ],
    );
  }
}
