import 'package:flutter/material.dart';
import 'package:flutter_home_page_ui_design/custom_widgets.dart';
import 'package:flutter_home_page_ui_design/random_card.dart';



class RandomListCard extends StatelessWidget {

  const RandomListCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CFlex(
      direction: Axis.vertical,
      spacing: 20,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CFlexSizedBox(
          width: double.infinity,
          child: RandomCard(
            randomImage:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTo7ZATpv_RKUePc7JnGoRh_7Zj5Wi_jz3Snw&usqp=CAU.jpg',
          ),
        ),
        CFlexSizedBox(
          width: double.infinity,
          height: null,
          child: RandomCard(
            randomImage:
                'https://cdn.cdnparenting.com/articles/2018/03/72136312-H.webp',
          ),
        ),
        CFlexSizedBox(
          width: double.infinity,
          height: null,
          child: RandomCard(
            randomImage:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgcIsR3TnSs39kOyPTq3J7GaCpbh2tjmWCzQ&usqp=CAU',
          ),
        )
      ],
    );
  }
}
