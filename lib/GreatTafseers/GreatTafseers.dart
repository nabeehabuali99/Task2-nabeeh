import 'package:flutter/material.dart';
import 'package:task_design2/Constants/FontFamilyConstants.dart';
import 'package:task_design2/Constants/PathImageConstants.dart';
import 'package:task_design2/Constants/SizeConfig/FontSizeConstants.dart';
import 'package:task_design2/Constants/SizeConfig/Size_Config.dart';

import '../Constants/Colors.dart';
import '../Constants/Shared Widgets/Text Widget.dart';
import '../Widgets/ButtonsWidget.dart';
import '../Widgets/Positioned Widgets.dart';

class GreateTafsserHome extends StatefulWidget {
  const GreateTafsserHome({Key? key}) : super(key: key);

  @override
  State<GreateTafsserHome> createState() => _GreateTafsserHomeState();
}

class _GreateTafsserHomeState extends State<GreateTafsserHome> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var screenHieght = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            width: screenWidth,
            top: screenHieght - 800,
            child: Image.asset(
              PathConstants.background,
            ),
          ),
          Positioned(
            top: screenHieght - 770,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                PathConstants.frame,
                height: screenHieght - 150,
                width: screenWidth,
              ),
            ),
          ),
          Positioned(
            top: screenHieght - 700,
            left: 0,
            child: Padding(
              padding: EdgeInsets.all(SizeConfig.defaultSize! * 1),
              child: Image.asset(
                PathConstants.pic1,
                height: screenHieght - 270,
                width: screenWidth,
              ),
            ),
          ),
          positionWidget(
              screenHieght - 790,
              screenWidth - 260,
              SizeConfig.defaultSize! * 1,
              PathConstants.Sora020,
              screenHieght - 800,
              screenWidth - 550),
          positionWidget(
              screenHieght - 790,
              screenWidth - 510,
              SizeConfig.defaultSize! * 1,
              PathConstants.p23,
              screenHieght - 800,
              screenWidth - 550),
          Positioned(
            height: screenHieght - 770,
            width: screenWidth,
            child: Image.asset(PathConstants.banner),
          ),
          Positioned(
            top: SizeConfig.defaultSize! * 1,
            right: SizeConfig.defaultSize! * 1,
            left: SizeConfig.defaultSize! * 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buttonWidget(PathConstants.play, () {
                  showDialog(
                      context: context,
                      builder: (_) =>   AlertDialog(
                            title: textWidget(
                              'Play ?',
                              FontFamilyConstants.montserrat,
                              Color_Const.black,
                              FontSizeConstants.fontsize15,
                              FontWeight.normal,
                            ),
                          ));
                }),
                buttonWidget(PathConstants.play_all_icon, () {}),
                buttonWidget(PathConstants.ayaList, () {}),
                buttonWidget(PathConstants.settings_icon, () {}),
                buttonWidget(PathConstants.list_icon, () {}),
                buttonWidget(PathConstants.bookmark_list_icon, () {}),
                buttonWidget(PathConstants.addBookMark_icon, () {}),
                buttonWidget(PathConstants.search_icon, () {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
