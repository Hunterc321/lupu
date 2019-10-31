import 'package:flutter/material.dart';
import 'package:flutter_lupu2/committees.dart';
import 'package:flutter_lupu2/aboutUs.dart';
import 'package:flutter_lupu2/rulesOfProcedures.dart';
import 'package:flutter_lupu2/theCity.dart';
import 'package:flutter_lupu2/main.dart';
import 'package:flutter_lupu2/home.dart';
import 'package:flutter_lupu2/commit_afterTap/chairpersons/char_spec1.dart';
import 'package:flutter_lupu2/commit_afterTap/chairpersons/char_spec2.dart';
import 'package:flutter_lupu2/commit_afterTap/chairpersons/char_spec3.dart';

class CharSpec extends StatefulWidget {
  @override
  _CharSpecState createState() => _CharSpecState();
}

class _CharSpecState extends State<CharSpec> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: ListView(children: <Widget>[

          SizedBox(height: MediaQuery.of(context).size.height/20,),
          Text(
            "SPECPOL",textAlign: TextAlign.center,
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
                  MaterialPageRoute(builder: (context) => CharSpec1()));
            },
            child: Image.asset(
              "asset/chairpersons/char_spec1.png",
              fit: BoxFit.fill,
              height: MediaQuery.of(context).size.height / 5,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height / 70),
          GestureDetector(
            onTap:() {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => CharSpec2()));
            },
            child: Image.asset(
              "asset/chairpersons/char_spec2.png",
              fit: BoxFit.fill,
              height: MediaQuery.of(context).size.height / 5,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height / 70),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => CharSpec3()));
            },
            child: Image.asset(
              "asset/chairpersons/char_spec3.png",
              fit: BoxFit.fill,
              height: MediaQuery.of(context).size.height / 5,
            ),
          ),





        ],



        )


    );
  }
}
