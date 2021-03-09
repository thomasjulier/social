import 'package:flutter/material.dart';

class CustomTextStyle {
  static var textFieldRegular = TextStyle(
      fontSize: 16,
      fontFamily: "Roboto",
      color: Colors.black,
  );

  static var textFieldLight =
  textFieldRegular.copyWith(fontWeight: FontWeight.w200);

  static var textFieldMedium =
  textFieldRegular.copyWith(fontWeight: FontWeight.w500);

  static var textFieldSemiBold =
  textFieldRegular.copyWith(fontWeight: FontWeight.w600, letterSpacing: 0.8);

  static var textFieldBold =
  textFieldRegular.copyWith(fontWeight: FontWeight.w700, letterSpacing: 0.8);

  static var textFieldBlack =
  textFieldRegular.copyWith(fontWeight: FontWeight.w900, letterSpacing: 0.8);

}
