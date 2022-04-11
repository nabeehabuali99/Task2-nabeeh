import 'package:flutter/material.dart';

import '../Constants/PathImageConstants.dart';
import '../Constants/SizeConfig/Size_Config.dart';

Widget buttonWidget(String imagePath, onTap) {
  return InkWell(
    onTap: onTap,
    child: SizedBox(
      height: SizeConfig.defaultSize! * 3,
      width: SizeConfig.defaultSize! * 4,
      child: Image.asset(imagePath),
    ),
  );
}
