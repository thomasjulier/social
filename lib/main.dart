import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mom4me/utils/Colors.dart';
import 'package:screen_loader/screen_loader.dart';

import 'component/AppStateContainer.dart';
import 'controller/Routes.dart';

void main() {
  runApp(
      AppStateContainer(
          child :Mom4MeComponent()
      )
  );
}

class Mom4MeComponent extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenLoaderApp(
        app: MaterialApp(
          title: 'Mom4Me App',
          debugShowCheckedModeBanner: false,
          initialRoute: '/',
          routes: Routes.mainRoute,
          builder: (context, child) {
            return Scaffold(
              body: child,
            );
          },
        ),
        globalLoader: CircularProgressIndicator(
          backgroundColor: CustomColor.WHITE_COLOR,
        )
    );
  }
}