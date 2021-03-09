import 'package:flutter/material.dart';

import 'Colors.dart';



class CustomBorder {
  static var enabledBorder = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(color: CustomColor.BORDER_COLOR_01, width: 1));

  static var enabledBottomBorder = UnderlineInputBorder(
        borderSide: BorderSide(color: CustomColor.BORDER_COLOR_01),
      );

      static var focusBorder = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(color: ThemeData.light().primaryColor, width: 1));

  static var errorBorder = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(color: Colors.red, width: 1));
}