import 'package:flutter/material.dart';
import 'package:flutter_home_page_ui_design/custom_list_button.dart';
import 'package:flutter_home_page_ui_design/custom_widgets.dart';
import 'package:flutter_home_page_ui_design/random_list_card.dart';

class HomePageTwo extends StatefulWidget {
  const HomePageTwo({Key? key}) : super(key: key);

  @override
  State<HomePageTwo> createState() {
    return _HomePageTwoState();
  }
}

class _HomePageTwoState extends State<HomePageTwo> {
  int pageIndex = 0;

  TextEditingController text = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var sHeight = MediaQuery.of(context).size.height;
    var sWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: sHeight * 0.02,
            horizontal: sWidth * 0.05,
          ),
          child: CFlex(
            direction: Axis.vertical,
            spacing: 0,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CFlexSizedBox(
                width: double.infinity,
                flex: 1,
                child: CFlex(
                  direction: Axis.vertical,
                  spacing: 15,
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CFlexSizedBox(
                      width: double.infinity,
                      child: CFlex(
                        direction: Axis.vertical,
                        spacing: 0,
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CFlexSizedBox(
                            child: Text(
                              'Browse',
                              style: TextStyle(
                                fontSize: 24,
                                color: Color(0xff333647),
                                fontFamily: 'ABeeZee',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          CFlexSizedBox(
                            child: Text(
                              'Discover things of this world',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff7c82a1),
                                fontFamily: 'ABeeZee',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    CFlexSizedBox(
                      width: double.infinity,
                      height: sHeight * 0.14,
                      child: CFlex(
                        direction: Axis.vertical,
                        spacing: 15,
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CFlexSizedBox(
                            width: double.infinity,
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                prefixIcon: Padding(
                                  padding: EdgeInsets.symmetric(
                                    vertical: sHeight * 0.01,
                                    horizontal: sWidth * 0.02,
                                  ),
                                  child: Icon(
                                    const IconData(60510,
                                        fontFamily: 'MaterialIcons'),
                                    color: const Color(0xff807d7d),
                                    size: sHeight * 0.04,
                                  ),
                                ),
                                filled: true,
                                fillColor: const Color(0xfff3f4f6),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: const BorderSide(
                                        color: Color(0xff000000))),
                              ),
                              controller: text,
                            ),
                          ),
                          const CFlexSizedBox(
                            width: double.infinity,
                            flex: 1,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              primary: true,
                              child: CustomListButton(),
                            ),
                          )
                        ],
                      ),
                    ),
                    const CFlexSizedBox(
                      width: double.infinity,
                      flex: 1,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: RandomListCard(),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text(
          '',
          style: TextStyle(),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: SizedBox(
              child: greyIcon(sHeight, 58136),
            ),
            label: '',
            activeIcon: blueIcon(sHeight, 58137),
          ),
          BottomNavigationBarItem(
            icon: greyIcon(sHeight, 61056),
            label: '',
            activeIcon: blueIcon(sHeight, 62829),
          ),
          BottomNavigationBarItem(
            icon: greyIcon(sHeight, 61154),
            label: '',
            activeIcon: blueIcon(sHeight, 62927),
          ),
          BottomNavigationBarItem(
            icon: greyIcon(sHeight, 60285),
            label: '',
            activeIcon: blueIcon(sHeight, 58502),
            backgroundColor: const Color(0xffffffff),
          )
        ],
        selectedItemColor: const Color(0xff475ad7),
        showSelectedLabels: false,
        unselectedItemColor: const Color(0xff000000),
        showUnselectedLabels: false,
        backgroundColor: null,
        elevation: 0,
        landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
        currentIndex: pageIndex,
        onTap: (value) {
          pageIndex = value;
          setState(() {});
        },
      ),
    );
  }

  Icon blueIcon(double sHeight, int changeIcon) {
    return Icon(
      IconData(changeIcon, fontFamily: 'MaterialIcons'),
      color: const Color(0xff475ad7),
      size: sHeight * 0.04,
    );
  }

  Icon greyIcon(double sHeight, int changeIcon) {
    return Icon(
      IconData(changeIcon, fontFamily: 'MaterialIcons'),
      color: const Color(0xffacafc3),
      size: sHeight * 0.04,
    );
  }
}
