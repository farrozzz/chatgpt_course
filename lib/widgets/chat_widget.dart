import 'package:chatgpt_course/constant/constant.dart';
import 'package:chatgpt_course/services/assets_manager.dart';
import 'package:chatgpt_course/widgets/text_widgets.dart';
import 'package:flutter/material.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({super.key,required this.msg,required this.chatIndex}) ;

  final String msg;
  final int chatIndex;
  @override
  Widget build(BuildContext context) {
    return  Column(children: [
      Material(
        color: chatIndex == 0 ? scaffoldBackgroundColor : cardColor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                  chatIndex == 0 ? AssetsManager.userImage:AssetsManager.botLogo,
                width: 30,
                height: 30,
              ),
              const SizedBox(
                width: 10,
              ),
               Expanded(
                 child: TextWidget(
                    label: msg),
               ),

              chatIndex == 0
                  ? const SizedBox.shrink()
              : Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(
                    Icons.thumb_up_alt_outlined,
                    size: 15,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(Icons.thumb_down_alt_outlined,
                  size: 15,
                  color: Colors.white),
                ],
              )
            ],
          ),
        ),
      )
    ],);
  }
}
