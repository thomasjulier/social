import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';

class Utils {

  static bool isEmpty(List<dynamic> list){
    return (list != null && list.length>0)?false: true;
  }

  static bool isEmptyString(String value){
    if(value == null || value.length == 0){
      return true;
    }
    return false;
  }

  static setEmptyStringIfNull(String string) {
    if(string == null){
      return "";
    }
    return string;
  }

  static setEmptyValueIfNull(String string, bool setPostString, String postString) {
    if(string == null){
      return "";
    }
    if(setPostString){
      string = string + postString;
    }
    return string;
  }

  static truncateOnExtend(String displayText, int i) {
    return (displayText!= null && displayText.length>0 &&  displayText.length >i )? (displayText.substring(0,i)+"..."):displayText;
  }

  static toastMessage(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.grey,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }

  static Divider() {
    return Container(
      width: 2,
      color: Colors.grey.shade400,
      height: 40,
    );
  }

  static launchURL(String url) async {
    url = "https://"+url;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  static callNumber(String number) async {
    number = "tel:"+number;
    if (await canLaunch(number)) {
      await launch(number);
    } else {
      throw 'Could not call $number';
    }
  }

  static double roundDouble(double val, int places){
    double mod = pow(10.0, places);
    return ((val * mod).round().toDouble() / mod);
  }
}