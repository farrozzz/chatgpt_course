import 'package:flutter/material.dart';
import 'package:chatgpt_course/widgets/text_widgets.dart';
import 'package:chatgpt_course/constant/constant.dart';

class ModelsDropDownWidget extends StatefulWidget {
  const ModelsDropDownWidget({super.key});

  @override
  State<ModelsDropDownWidget> createState() => _ModelsDropDownWidgetState();
}

class _ModelsDropDownWidgetState extends State<ModelsDropDownWidget> {
  String currentModel = "Model1";
  @override
  Widget build(BuildContext context) {
    return DropdownButton(dropdownColor: scaffoldBackgroundColor,
      iconEnabledColor: Colors.lightGreen,
      items: getModelsItem,
      value: currentModel,
      onChanged: (value) {
        setState(() {
          currentModel = value.toString();
        });
      },
    );
  }
}