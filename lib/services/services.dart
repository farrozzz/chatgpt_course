import 'package:chatgpt_course/constant/constant.dart';
import 'package:chatgpt_course/widgets/dropdown.dart';
import 'package:chatgpt_course/widgets/text_widgets.dart';
import 'package:flutter/material.dart';

class Services {
  static Future<void> showModalSheet({required BuildContext context})async{

        await showModalBottomSheet(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top : Radius.circular(20),
          ),
        ),
        backgroundColor: scaffoldBackgroundColor,
        context: context,
        builder: (context){
          return Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              children:
              [Flexible(
                  child: TextWidget(
                    label: "choosen model         ",
                    fontSize: 12,
                  ),
              ),
                Flexible(child: ModelsDropDownWidget())
              ],
            ),
          );
        });
  }
}