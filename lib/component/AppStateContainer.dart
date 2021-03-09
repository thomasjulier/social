import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mom4me/utils/CustomUtils.dart';
import 'package:permission_handler/permission_handler.dart';


class AppStateContainer extends StatefulWidget {
  final Widget child;

  AppStateContainer({@required this.child});

  @override
  _AppStateContainerState createState() => _AppStateContainerState();

  static _AppStateContainerState of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(_InheritedStateContainer)
    as _InheritedStateContainer)
        .data;
  }
}

class _AppStateContainerState extends State<AppStateContainer> {

  @override
  initState() {
    checkPermissions();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _InheritedStateContainer(
      data: this,
      child: widget.child,
    );
  }

}

class _InheritedStateContainer extends InheritedWidget {
  final _AppStateContainerState data;

  const _InheritedStateContainer({
    Key key,
    @required this.data,
    @required Widget child,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(_InheritedStateContainer oldWidget) => true;
}

checkPermissions() async {
  List permissionList = [Permission.camera,Permission.storage,Permission.location,Permission.microphone, Permission.accessMediaLocation];
  for(int i = 0; i < permissionList.length; i++)
  {
    Permission permission = permissionList[i];
    var res = await permission.status;
    if (res != PermissionStatus.granted) {
      res = await permission.request();
    }
    print("Permission result :" + res.toString());
  }
}