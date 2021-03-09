import 'dart:async';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final Completer<WebViewController> _controller =  Completer<WebViewController>();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  num _stackToView = 1;


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: _onBackPressed,
        child: Scaffold(
            key: _scaffoldKey,
            appBar: PreferredSize(
              child: Container(),
              preferredSize: Size.fromHeight(0.0),
            ) ,
            body: IndexedStack(
                index: _stackToView,
                children: [
                  Container(
                      child: WebView(
                        initialUrl: 'https://mom4me.com',
                        javascriptMode: JavascriptMode.unrestricted,
                        onWebViewCreated: (WebViewController webViewController) {
                          _controller.complete(webViewController);
                        },
                        onPageFinished: _handleLoad,
                      )
                  ),
                  Container(
                    //color: Colors.greenAccent[700],
                    child: Center(
                      child: CircularProgressIndicator(
                        valueColor:AlwaysStoppedAnimation<Color>(Colors.brown),
                      ),
                    ),
                  ),
                ])
        )
    );
  }

  JavascriptChannel _toasterJavascriptChannel(BuildContext context) {
    return JavascriptChannel(
        name: 'Toaster',
        onMessageReceived: (JavascriptMessage message) {
          // ignore: deprecated_member_use
          Scaffold.of(context).showSnackBar(
            SnackBar(content: Text(message.message)),
          );
        });
  }

  void _handleLoad(String value) {
    setState(() {
      _stackToView = 0;
    });
  }

  Future<bool> _onBackPressed() {
    return showDialog(
      context: context,
      builder: (context) => new AlertDialog(
        title: new Text('Are you sure?'),
        content: new Text('Do you want to exit from Mom4Me'),
        actions: <Widget>[
          new FlatButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text("NO" , style: TextStyle(color: Colors.red),),
          ),
          SizedBox(height: 16),
          new FlatButton(
            onPressed: () => SystemChannels.platform.invokeMethod('SystemNavigator.pop'),//Navigator.of(context).pop(true),
            child: Text("YES" ,style: TextStyle(color: Colors.green),) ,
          ),
        ],
      ),
    ) ??
        false;
  }
}
