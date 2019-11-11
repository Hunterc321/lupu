import 'package:flutter/material.dart';
import 'package:flutter_lupu2/committees.dart';
import 'package:flutter_lupu2/aboutUs.dart';
import 'package:flutter_lupu2/rulesOfProcedures.dart';
import 'package:flutter_lupu2/theCity.dart';
import 'package:flutter_lupu2/main.dart';
import 'package:flutter_lupu2/home.dart';
import 'package:flutter_lupu2/commit_afterTap/chairpersons/char_who1.dart';
import 'package:flutter_lupu2/commit_afterTap/chairpersons/char_who2.dart';
import 'package:flutter_lupu2/commit_afterTap/chairpersons/char_who3.dart';

class CharWho extends StatefulWidget {
  @override
  _CharWhoState createState() => _CharWhoState();
}

class _CharWhoState extends State<CharWho> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: ListView(children: <Widget>[

          SizedBox(height: MediaQuery.of(context).size.height/20,),
          Text(
            "WHO",textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.height / 18,
                decoration: TextDecoration.none,
                fontWeight: FontWeight.bold,
                fontFamily: "MontSerrat",
                letterSpacing: 0),
          ),
          SizedBox(height: MediaQuery.of(context).size.height/60,),

          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => CharWho1()));
            },
            child: Image.asset(
              "asset/chairpersons/char_who1.png",
              fit: BoxFit.fill,
              height: MediaQuery.of(context).size.height / 5,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height / 70),
          GestureDetector(
            onTap:() {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => CharWho2()));
            },
            child: Image.asset(
              "asset/chairpersons/char_who2.png",
              fit: BoxFit.fill,
              height: MediaQuery.of(context).size.height / 5,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height / 70),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => CharWho3()));
            },
            child: Image.asset(
              "asset/chairpersons/char_who3.png",
              fit: BoxFit.fill,
              height: MediaQuery.of(context).size.height / 5,
            ),
          ),





        ],



        )


    );
  }
}
