import 'package:flutter/material.dart';
import 'package:flutter_home_page_ui_design/custom_button.dart';
import 'package:flutter_home_page_ui_design/custom_widgets.dart';

class CustomListButton extends StatefulWidget {
  const CustomListButton({Key? key}) : super(key: key);

  @override
  State<CustomListButton> createState() {
    return _CustomListButtonState();
  }
}

class _CustomListButtonState extends State<CustomListButton> {
  @override
  Widget build(BuildContext context) {
    var sWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: CFlex(
        direction: Axis.horizontal,
        spacing: 20,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CFlexSizedBox(
            height: double.infinity,
            width: sWidth * 0.24,
            child: const CustomButton(),
          ),
          CFlexSizedBox(
            height: double.infinity,
            width: sWidth * 0.24,
            child: const CustomButton(
              changeText: 'Sports',
            ),
          ),
          CFlexSizedBox(
            height: double.infinity,
            width: sWidth * 0.24,
            child: const CustomButton(
              changeText: 'Gaming',
            ),
          ),
          CFlexSizedBox(
            height: double.infinity,
            width: sWidth * 0.24,
            child: const CustomButton(
              changeText: 'Politics',
            ),
          ),
          CFlexSizedBox(
            height: double.infinity,
            width: sWidth * 0.24,
            child: const CustomButton(
              changeText: 'sos',
            ),
          ),
          CFlexSizedBox(
            height: double.infinity,
            width: sWidth * 0.24,
            child: const CustomButton(),
          )
        ],
      ),
    );
  }
}
