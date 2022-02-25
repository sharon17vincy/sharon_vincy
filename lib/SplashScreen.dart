import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:sharon_vincy/BottomNavigationPage.dart';
import 'package:sharon_vincy/Home.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SplashScreen> {

  @override
  Widget build(BuildContext context) {
    return initScreen(context);
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pop(context);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => MyTab()));
    });
  }


  initScreen(BuildContext context) {
    return Scaffold(
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Center(
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Image(
                    image: AssetImage(
                      'assets/images/U-Sell-Up.png',
                    ),
                    width: 800.0),
                Padding(padding: EdgeInsets.only(top: 20.0)),
              //   Text("by", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              //   Padding(padding: EdgeInsets.only(top: 20.0)),
              //   Image(
              //     image: AssetImage(
              //       'assets/images/logo.png',
              //     ),
              //     width: 250.0),
              // Padding(padding: EdgeInsets.only(top: 20.0)),
                SpinKitThreeBounce(
                  color: Colors.black,
                  size: 30,
                ),
            ],
          )),
        ));
  }
}
