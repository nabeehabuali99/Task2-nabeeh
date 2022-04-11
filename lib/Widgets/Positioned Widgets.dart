import 'package:flutter/material.dart';

Widget positionWidget(double top,double left,double padding,String image,double heightPic,double widthPic ){

  return  Positioned(
    top: top,
    left: left,
    child: Padding(
      padding: EdgeInsets.all(padding),
      child: Image.asset(
        image,
        height: heightPic,
        width:widthPic,
      ),
    ),
  );


}