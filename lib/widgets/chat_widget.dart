import 'package:chatgpt_course/constant/constant.dart';
import 'package:chatgpt_course/services/assets_manager.dart';
import 'package:chatgpt_course/widgets/text_widgets.dart';
import 'package:flutter/material.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(children: [
      Material(
        color: cardColor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Image.asset(
                  AssetsManager.userImage,
                width: 30,
                height: 30,
              ),
              const SizedBox(
                width: 10,
              ),
              const TextWidget(label: "here our msg")
            ],
          ),
        ),
      )
    ],);
  }
}
