import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Borders.dart';
import 'Colors.dart';

class CustomInputFieldDecoration{

  static var decorationInputFieldType = InputDecoration(
      contentPadding: EdgeInsets.fromLTRB(10, 16, 16, 10),
      border: CustomBorder.enabledBottomBorder.copyWith(borderSide: BorderSide(color: CustomColor.PRIMARY_COLOR)),
      labelText: "InputField",
      focusedBorder: CustomBorder.enabledBottomBorder.copyWith(borderSide: BorderSide(color: CustomColor.ACCENT_COLOR)),
      errorBorder: CustomBorder.errorBorder,
      enabledBorder: CustomBorder.enabledBottomBorder.copyWith(borderSide: BorderSide(color: CustomColor.SECONDARY_COLOR)),
      labelStyle: TextStyle(
          color:  Colors.grey
      )
  );
  static var decorationInputFieldTypeOne  =new InputDecoration(
      contentPadding: EdgeInsets.fromLTRB(10, 12, 16, 12),
      hintStyle: new TextStyle(color: CustomColor.PRIMARY_COLOR),
      focusedBorder: CustomBorder.enabledBorder.copyWith(borderSide: BorderSide(color: CustomColor.PRIMARY_COLOR), borderRadius: BorderRadius.all(Radius.circular(5)),),
      enabledBorder: CustomBorder.enabledBorder.copyWith(borderSide: BorderSide(color: CustomColor.PRIMARY_COLOR), borderRadius: BorderRadius.all(Radius.circular(5))),
      errorBorder: CustomBorder.errorBorder,
      labelStyle: TextStyle(
          color:  Colors.grey
      ),
      hintText: "Search.."
  );

}