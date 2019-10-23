import 'package:flutter/material.dart';
import 'package:flutter_lupu2/committees.dart';
import 'package:flutter_lupu2/aboutUs.dart';
import 'package:flutter_lupu2/rulesOfProcedures.dart';
import 'package:flutter_lupu2/theCity.dart';
import 'package:flutter_lupu2/main.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter_lupu2/side_menu_OnClickEvents.dart';

//Align(alignment:Alignment(-0.9,-0.7),child:new Image.asset('asset/mainMenuImages/main_theCity.png',height: 220,))
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: FittedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              GestureDetector(
                  onTap: () {
                    BottomNavigationBar bottomNavBar = globalKey.currentWidget;
                    bottomNavBar.onTap(0);
                  },
                  child: Image.asset("asset/mainMenuImages/main_theCity.png",
                      height: 200)),
              GestureDetector(
                  onTap: () {
                    BottomNavigationBar bottomNavBar = globalKey.currentWidget;
                    bottomNavBar.onTap(1);
                  },
                  child: Image.asset("asset/mainMenuImages/main_commit.png",
                      height: 200))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              GestureDetector(
                  onTap: () {
                    BottomNavigationBar bottomNavBar = globalKey.currentWidget;
                    bottomNavBar.onTap(3);
                  },
                  child: Image.asset(
                      "asset/mainMenuImages/main_rulesOfProcedures.png",
                      height: 200)),
              GestureDetector(
                  onTap: () {
                    BottomNavigationBar bottomNavBar = globalKey.currentWidget;
                    bottomNavBar.onTap(4);
                  },
                  child: Image.asset("asset/mainMenuImages/main_aboutUs.png",
                      height: 200))
            ],
          )
        ],
      ),
    ));
  }
}
