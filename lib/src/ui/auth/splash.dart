import 'dart:async';
import 'package:flutter/material.dart';

import '../../utils/constants.dart';
import '../../utils/navigation.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: FlutterLogo(
          size: 200,
        ),
      ),
    );
  }

  _startTime() async {
    var _duration = Duration(seconds: splashTime);
    return Timer(_duration, _gotoNextScreen);
  }

  void _gotoNextScreen() {
    NavigationUtils.pushReplacement(context,routeLogin);
  }

  @override
  void initState() {
    super.initState();
    _startTime();
  }


}
