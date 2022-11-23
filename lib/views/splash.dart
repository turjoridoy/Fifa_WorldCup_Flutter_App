import 'package:flutter/cupertino.dart';
import 'package:qatar_wc/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:qatar_wc/styles/text_constants.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "images/logo.png",
                width: 200,
                // color: Colors.black,
              ),
              Text(
                TConstants.title.toUpperCase(),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: MyColors.primaryColor
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
