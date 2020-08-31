import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DialogUtils {
  static void showAlertDialog(
      BuildContext context, String title, String message) {
    // flutter defined function
    showDialog(
      context: context,
      builder: (context) {
//        if (Platform.isIOS) {
//          return _showCupertinoAlertDialog(context, title, message);
//        } else {
          return _showMaterialAlertDialog(context, title, message);
//        }
      },
    );
  }

  static CupertinoAlertDialog _showCupertinoAlertDialog(
      BuildContext context, String title, String message) {
    return CupertinoAlertDialog(
      title: Text(title),
      content: Text(message),
      actions: _actions(context),
    );
  }

  static AlertDialog _showMaterialAlertDialog(
      BuildContext context, String title, String message) {
    return AlertDialog(
      title: Text(title),
      content: Text(message),
      actions: _actions(context),
    );
  }

  static List<Widget> _actions(BuildContext context) {
    return <Widget>[
      // usually buttons at the bottom of the dialog
      FlatButton(
        child: Text("ok"),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
//      new FlatButton(
//        child: new Text("Yes"),
//        onPressed: () {
//          Navigator.of(context).pop();
//        },
//      ),
    ];
  }
}
