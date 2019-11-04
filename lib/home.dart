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
        home: Column(

          children: <Widget>[
            SizedBox(height: MediaQuery.of(context).size.height / 20,),

            Row(
              children: <Widget>[
                GestureDetector(
                    onTap: () {
                      BottomNavigationBar bottomNavBar = globalKey.currentWidget;
                      bottomNavBar.onTap(0);
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => TheCity()));
                    },
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 25),
                      child: Image.asset("asset/mainMenuImages/main_theCity.png",
                          height: MediaQuery.of(context).size.height / 3.3,
                          width: MediaQuery.of(context).size.width / 2.2,
                          fit: BoxFit.fill),
                    )),
                GestureDetector(
                    onTap: () {
                      BottomNavigationBar bottomNavBar = globalKey.currentWidget;
                      bottomNavBar.onTap(1);
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Committess()));
                    },
                    child: Padding(
                      padding: EdgeInsets.only(left:MediaQuery.of(context).size.width / 30),
                      child: Image.asset("asset/mainMenuImages/main_commit.png",
                          height: MediaQuery.of(context).size.height / 3.3,
                          width: MediaQuery.of(context).size.width / 2.2,
                          fit: BoxFit.fill),
                    ))
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 100,
            ),
            Row(
              children: <Widget>[
                GestureDetector(
                    onTap: () {
                      BottomNavigationBar bottomNavBar = globalKey.currentWidget;
                      bottomNavBar.onTap(3);
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => RulesOfProcedures()));
                    },
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 25),
                      child: Image.asset(
                          "asset/mainMenuImages/main_rulesOfProcedures.png",
                          height: MediaQuery.of(context).size.height / 3.3,
                          width: MediaQuery.of(context).size.width / 2.2,
                          fit: BoxFit.fill),
                    )),
                GestureDetector(
                    onTap: () {
                      BottomNavigationBar bottomNavBar = globalKey.currentWidget;
                      bottomNavBar.onTap(4);
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => AboutUs()));
                    },
                    child: Padding(
                      padding: EdgeInsets.only(left:MediaQuery.of(context).size.width / 30),
                      child: Image.asset(
                        "asset/mainMenuImages/main_aboutUs.png",
                        height: MediaQuery.of(context).size.height / 3.3,
                        width: MediaQuery.of(context).size.width / 2.2,
                        fit: BoxFit.fill,
                      ),
                    ))
              ],
            )
          ],
        ));
  }
}
