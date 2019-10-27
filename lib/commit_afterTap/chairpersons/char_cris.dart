import 'package:flutter/material.dart';
import 'package:flutter_lupu2/committees.dart';
import 'package:flutter_lupu2/aboutUs.dart';
import 'package:flutter_lupu2/rulesOfProcedures.dart';
import 'package:flutter_lupu2/theCity.dart';
import 'package:flutter_lupu2/main.dart';
import 'package:flutter_lupu2/home.dart';
import 'package:flutter_lupu2/commit_afterTap/chairpersons/char_cris1.dart';
import 'package:flutter_lupu2/commit_afterTap/chairpersons/char_cris2.dart';
import 'package:flutter_lupu2/commit_afterTap/chairpersons/char_cris3.dart';

class CharCris extends StatefulWidget {
  @override
  _CharCrisState createState() => _CharCrisState();
}

class _CharCrisState extends State<CharCris> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Column(children: <Widget>[

          SizedBox(height: MediaQuery.of(context).size.height/20,),
          Text(
            "CRISIS",
            style: TextStyle(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.height / 18,
                decoration: TextDecoration.none,
                fontWeight: FontWeight.normal,
                fontFamily: "Robot",
                letterSpacing: 0),
          ),
          SizedBox(height: MediaQuery.of(context).size.height/60,),

          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => CharCris1()));
            },
            child: Image.asset(
              "asset/chairpersons/char_cris1.png",
              fit: BoxFit.fill,
              height: MediaQuery.of(context).size.height / 5,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height / 70),
          GestureDetector(
            onTap:() {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => CharCris2()));
            },
            child: Image.asset(
              "asset/chairpersons/char_cris2.png",
              fit: BoxFit.fill,
              height: MediaQuery.of(context).size.height / 5,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height / 70),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => CharCris3()));
            },
            child: Image.asset(
              "asset/chairpersons/char_cris3.png",
              fit: BoxFit.fill,
              height: MediaQuery.of(context).size.height / 5,
            ),
          ),





        ],



        )


    );
  }
}
