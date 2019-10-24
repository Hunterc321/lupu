
import 'package:flutter/material.dart';
import 'package:flutter_lupu2/commit_afterTap/commit_unhrc.dart';
import 'package:flutter_lupu2/commit_afterTap/commit_who.dart';
import 'package:flutter_lupu2/commit_afterTap/commit_crisis.dart';
import 'package:flutter_lupu2/commit_afterTap/commit_ecosoc.dart';
import 'package:flutter_lupu2/commit_afterTap/commit_specpol.dart';
import 'package:flutter_lupu2/commit_afterTap/commit_unsc.dart';

class TheApp extends StatefulWidget {
  @override
  _TheAppState createState() => _TheAppState();
}

class _TheAppState extends State<TheApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:Stack(fit: StackFit.expand,
      children: <Widget>[
        new DecoratedBox(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("asset/commit_background.png"),
                    fit: BoxFit.cover))),
        ListView(children: <Widget>[
          Text(
            "TheApp",textAlign: TextAlign.center,
            style: TextStyle(
                color: Color.fromRGBO(0, 119, 172, 5),
                fontSize: MediaQuery.of(context).size.height / 18,
                decoration: TextDecoration.none,
                fontWeight: FontWeight.bold,
                letterSpacing: 0),
          ),
          SizedBox(height: MediaQuery.of(context).size.height/20),
          Image.asset(
            "asset/aboutUs/ta_ac.png",
              height:MediaQuery.of(context).size.height/3 ,
              width:MediaQuery.of(context).size.width,
          ),
          SizedBox(height: MediaQuery.of(context).size.height/20),
          Text(
            "Cosmin Popa",textAlign: TextAlign.center,
            style: TextStyle(
                color: Color.fromRGBO(17, 29, 74, 5),
                fontSize: MediaQuery.of(context).size.height / 18,
                decoration: TextDecoration.none,
                fontWeight: FontWeight.bold,
                letterSpacing: 0),
          ),
          Text(
            "Implementation & Services",textAlign: TextAlign.center,
            style: TextStyle(
                color: Color.fromRGBO(17, 29, 74, 5),
                fontSize: MediaQuery.of(context).size.height / 33,
                decoration: TextDecoration.none,
                fontWeight: FontWeight.normal,
                letterSpacing: 0),
          ),
          Image.asset(
            "asset/aboutUs/ta_cosmin.png",
            height:MediaQuery.of(context).size.height/2,
            width:MediaQuery.of(context).size.width,
          ),
          SizedBox(height: MediaQuery.of(context).size.height/20),
          Text(
            "Andrei Lupascu",textAlign: TextAlign.center,
            style: TextStyle(
                color: Color.fromRGBO(17, 29, 74, 5),
                fontSize: MediaQuery.of(context).size.height / 18,
                decoration: TextDecoration.none,
                fontWeight: FontWeight.bold,
                letterSpacing: 0),
          ),

          Text(
            "Implementation & Services",textAlign: TextAlign.center,
            style: TextStyle(
                color: Color.fromRGBO(17, 29, 74, 5),
                fontSize: MediaQuery.of(context).size.height / 33,
                decoration: TextDecoration.none,
                fontWeight: FontWeight.normal,
                letterSpacing: 0),
          ),
          Image.asset(
            "asset/aboutUs/ta_lupascu.png",
            height:MediaQuery.of(context).size.height/2,
            width:MediaQuery.of(context).size.width,
          ),
          SizedBox(height: MediaQuery.of(context).size.height/20),
          Text(
            "Laura Ilinca Nica",textAlign: TextAlign.center,
            style: TextStyle(
                color: Color.fromRGBO(17, 29, 74, 5),
                fontSize: MediaQuery.of(context).size.height / 20,
                decoration: TextDecoration.none,
                fontWeight: FontWeight.bold,
                letterSpacing: 0),
          ),

          Text(
            "Project coordinator",textAlign: TextAlign.center,
            style: TextStyle(
                color: Color.fromRGBO(17, 29, 74, 5),
                fontSize: MediaQuery.of(context).size.height / 33,
                decoration: TextDecoration.none,
                fontWeight: FontWeight.normal,
                letterSpacing: 0),
          ),
          SizedBox(height: MediaQuery.of(context).size.height/20),
          Text(
            "Stefana Popa",textAlign: TextAlign.center,
            style: TextStyle(
                color: Color.fromRGBO(17, 29, 74, 5),
                fontSize: MediaQuery.of(context).size.height / 20,
                decoration: TextDecoration.none,
                fontWeight: FontWeight.bold,
                letterSpacing: 0),
          ),

          Text(
            "User Interface & Design",textAlign: TextAlign.center,
            style: TextStyle(
                color: Color.fromRGBO(17, 29, 74, 5),
                fontSize: MediaQuery.of(context).size.height / 33,
                decoration: TextDecoration.none,
                fontWeight: FontWeight.normal,
                letterSpacing: 0),
          ),
























        ],)




      ],

    ) ,);
  }
}
