import 'package:flutter/material.dart';
import 'package:flutter_home_page_ui_design/custom_widgets.dart';

class RandomCard extends StatelessWidget {
  const RandomCard(
      {this.randomImage =
          'https://canary.contestimg.wish.com/api/webimage/5ddccb3c9a6f6e1cf8d7dd65-large.jpg?cache_buster=114b2b0b5893a0e736412075646fa5da',
      Key? key})
      : super(key: key);

  final String randomImage;

  @override
  Widget build(BuildContext context) {
    var sHeight = MediaQuery.of(context).size.height;
    var sWidth = MediaQuery.of(context).size.width;
    return CFlex(
      direction: Axis.vertical,
      spacing: 10,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CFlexSizedBox(
          width: double.infinity,
          height: sHeight * 0.21,
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xffc4c4c4),
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(randomImage)),
            ),
          ),
        ),
        CFlexSizedBox(
          height: null,
          width: double.infinity,
          child: CFlex(
            direction: Axis.horizontal,
            spacing: 5,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CFlexSizedBox(
                width: sHeight * 0.30,
                height: null,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: sWidth * 0.05,
                    right: sWidth * 0.05,
                    top: 0,
                    bottom: 0,
                  ),
                  child: const Text(
                    'A Simple Trick For Creating Color Palettes Quickly',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff333647),
                    ),
                  ),
                ),
              ),
              CFlexSizedBox(
                width: null,
                height: null,
                child: Icon(
                  const IconData(59376, fontFamily: 'MaterialIcons'),
                  color: const Color(0xff000000),
                  size: sHeight * 0.05,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
