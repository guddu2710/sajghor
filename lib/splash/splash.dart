import 'package:flutter/material.dart';
import 'package:sajghor/dashboard/dashboard.dart';
import 'package:sajghor/login/mobile.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashScreens extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreens> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(

        seconds: 14,
        navigateAfterSeconds: new EnterMobile(),
        title: new Text('',
          style: new TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0
          ),),
        image: new Image.network("https://assets.materialup.com/uploads/3c5d34b0-7188-4a1d-9724-db65264cc568/preview.gif"),
        backgroundColor:  Color(0xffe93e7c),
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 100.0,
        onClick: ()=>print("Flutter Egypt"),
        loaderColor: Colors.white
    );
  }
}


