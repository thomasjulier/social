import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mom4me/utils/Assets.dart';
import 'package:mom4me/utils/Colors.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  splashMove() {
    return Timer(Duration(seconds: 4), navigatePage);
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width =  MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white,
      body: Container(
        height: height,
        width: width,
        color: CustomColor.BACKGROUND_COLOR,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Image(
          image: AssetImage(Assets.logo),
          alignment: Alignment.center,
          fit: BoxFit.contain,
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    splashMove();
  }

  navigatePage() async {
    Navigator.pushReplacementNamed(context,'/home');
  }
}
