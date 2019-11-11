import 'package:flutter/material.dart';
import 'package:flutter_lupu2/committees.dart';
import 'package:flutter_lupu2/aboutUs.dart';
import 'package:flutter_lupu2/rulesOfProcedures.dart';
import 'package:flutter_lupu2/theCity.dart';
import 'package:flutter_lupu2/main.dart';
import 'package:flutter_lupu2/home.dart';
import 'package:flutter_lupu2/commit_afterTap/chairpersons/char_unsc1.dart';
import 'package:flutter_lupu2/commit_afterTap/chairpersons/char_unsc2.dart';

class CharUnsc extends StatefulWidget {
  @override
  _CharUnscState createState() => _CharUnscState();
}

class _CharUnscState extends State<CharUnsc> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: ListView(children: <Widget>[

          SizedBox(height: MediaQuery.of(context).size.height/20,),
          Text(
            "UNSC",textAlign: TextAlign.center,
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
                  MaterialPageRoute(builder: (context) => CharUnsc1()));
            },
            child: Image.asset(
              "asset/chairpersons/char_unsc1.png",
              fit: BoxFit.fill,
              height: MediaQuery.of(context).size.height / 4,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height / 70),
          GestureDetector(
            onTap:() {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => CharUnsc2()));
            },
            child: Image.asset(
              "asset/chairpersons/char_unsc2.png",
              fit: BoxFit.fill,
              height: MediaQuery.of(context).size.height / 4,
            ),
          ),






        ],



        )


    );
  }
}
