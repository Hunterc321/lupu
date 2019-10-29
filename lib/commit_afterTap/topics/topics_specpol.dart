import 'package:flutter/material.dart';

import 'package:flutter_lupu2/committees.dart';
import 'package:flutter_lupu2/aboutUs.dart';
import 'package:flutter_lupu2/rulesOfProcedures.dart';
import 'package:flutter_lupu2/theCity.dart';
import 'package:flutter_lupu2/main.dart';
import 'package:flutter_lupu2/home.dart';
import 'package:flutter_lupu2/commit_afterTap/commit_unhrc.dart';
import 'package:flutter_lupu2/commit_afterTap/chairpersons/char_unhrc.dart';
import 'package:flutter_lupu2/commit_afterTap/topics/topics_unhrc.dart';
import 'package:flutter_lupu2/commit_afterTap/topics/topics_specpol1.dart';
import 'package:flutter_lupu2/commit_afterTap/topics/topics_specpol2.dart';
import 'package:flutter_lupu2/commit_afterTap/topics/resolution/res_spec.dart';

import 'package:flutter_lupu2/side_menu_OnClickEvents.dart';

class TopSpec extends StatefulWidget {
  @override
  _TopSpecState createState() => _TopSpecState();
}

class _TopSpecState extends State<TopSpec> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Stack(
        fit: StackFit.expand,
        children: <Widget>[

          ListView(
            children: <Widget>[
              Text(
                "SPECPOL",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.height / 18,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Roboto",
                    letterSpacing: 0),
              ),
              Padding(
                padding: EdgeInsets.all(MediaQuery.of(context).size.width/10),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) =>ResSpec()));
                  },
                  child: Image.asset(
                    "asset/topics/res_spec.png",
                    height: MediaQuery.of(context).size.height / 7,
                    width: MediaQuery.of(context).size.width / 2,fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.all(MediaQuery.of(context).size.width/50),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) =>TopSpec1()));
                  },
                  child: Image.asset(
                    "asset/topics/topic_spec1.png",
                    height: MediaQuery.of(context).size.height / 4,
                    width: MediaQuery.of(context).size.width / 2,fit: BoxFit.fill,
                  ),
                ),
              ),

              Padding(
                padding:  EdgeInsets.all(MediaQuery.of(context).size.width / 50),

                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) =>TopSpec2()));
                  },
                  child: Image.asset(
                    "asset/topics/topic_spec2.png",
                    height: MediaQuery.of(context).size.height / 4,
                    width: MediaQuery.of(context).size.width / 2,fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
