import 'package:flutter/material.dart';
import 'package:flutter_home_page_ui_design/custom_widgets.dart';

class CustomButton extends StatefulWidget {

  const CustomButton({this.changeText = 'Random', Key? key}) : super(key: key);

  final String changeText;

  @override
  State<CustomButton> createState() {
    return _CustomButtonState();
  }
}


class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
       var sHeight = MediaQuery.of(context).size.height;
    var sWidth = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xfff3f4f6),
          borderRadius: BorderRadius.circular(20)),
      child: CFlex(
        direction: Axis.horizontal,
        spacing: 0,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CFlexSizedBox(
            flex: 1,
            height: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: sHeight * 0.01,
                horizontal: sWidth * 0.02,
              ),
              child: Text(
                widget.changeText,
                style: const TextStyle(
                  color: Color(0xff7c82a1),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }
}
