import 'package:flutter/material.dart';
import 'package:baseproject/src/utils/localization/localization.dart';

class Utils {
  static bool isEmailValid(value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value)) {
      return true;
    } else {
      return false;
    }
  }

  static InputDecoration styleInputDecoration(String label) {
    return InputDecoration(
      labelText: label,
      labelStyle: styleTextStyleTextField(),
      counterText: "",
      border: OutlineInputBorder(),
    );
  }
  static TextStyle styleTextStyleTextField() {
    return TextStyle(
      fontSize: 20,
    );
  }

  static String isValidEmail(BuildContext context,String value) {
    if (value.isEmpty) {
      return Localization.of(context).msgEnterAddress;
    } else if (Utils.isEmailValid(value)) {
      return Localization.of(context).msgEnterValidAddress;
    } else {
      return null;
    }
  }

  static String isEmpty(BuildContext context,String value, String message) {
    if (value.isEmpty) {
      return message;
    } else {
      return null;
    }
  }

}
