import 'package:flutter/material.dart';
import 'package:flutter_lupu2/committees.dart';
import 'package:flutter_lupu2/aboutUs.dart';
import 'package:flutter_lupu2/rulesOfProcedures.dart';
import 'package:flutter_lupu2/theCity.dart';
import 'package:flutter_lupu2/main.dart';
import 'package:flutter_lupu2/home.dart';
import 'package:flutter_lupu2/commit_afterTap/commit_unhrc.dart';
import 'package:flutter_lupu2/commit_afterTap/chairpersons/char_unhrc1.dart';
import 'package:flutter_lupu2/commit_afterTap/chairpersons/char_unhrc2.dart';
import 'package:flutter_lupu2/commit_afterTap/chairpersons/char_unhrc3.dart';

import 'package:flutter_lupu2/side_menu_OnClickEvents.dart';


class CharUnhrc extends StatefulWidget {
  @override
  _CharUnhrcState createState() => _CharUnhrcState();
}

class _CharUnhrcState extends State<CharUnhrc> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListView(children: <Widget>[

        SizedBox(height: MediaQuery.of(context).size.height/20,),
        Text(
          "UNHRC",textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white,
              fontSize: MediaQuery.of(context).size.height / 18,
              decoration: TextDecoration.none,
              fontWeight: FontWeight.normal,
              fontFamily: "MontSerrat",
              letterSpacing: 0),
        ),
        SizedBox(height: MediaQuery.of(context).size.height/60,),

        GestureDetector(
          onTap: () {
    Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => CharUnhrc1()));
    },
          child: Image.asset(
            "asset/chairpersons/char_unhrc1.png",
            fit: BoxFit.fill,
            height: MediaQuery.of(context).size.height / 5,
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height / 70),
        GestureDetector(
          onTap:() {
    Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => CharUnhrc2()));
    },
          child: Image.asset(
            "asset/chairpersons/char_unhrc2.png",
            fit: BoxFit.fill,
            height: MediaQuery.of(context).size.height / 5,
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height / 70),
        GestureDetector(
          onTap: () {
    Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => CharUnhrc3()));
    },
          child: Image.asset(
            "asset/chairpersons/char_unhrc3.png",
            fit: BoxFit.fill,
            height: MediaQuery.of(context).size.height / 5,
          ),
        ),





      ],



      )


      );




  }
}
