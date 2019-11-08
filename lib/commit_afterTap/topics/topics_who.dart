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
import 'package:flutter_lupu2/commit_afterTap/topics/topics_who1.dart';
import 'package:flutter_lupu2/commit_afterTap/topics/topics_who2.dart';
import 'package:flutter_lupu2/commit_afterTap/topics/resolution/res_who.dart';
import 'package:flutter_lupu2/side_menu_OnClickEvents.dart';
import 'package:flutter_lupu2/commit_afterTap/topics/resolution/res_who.dart';


class TopCrisis extends StatefulWidget {
  @override
  _TopCrisisState createState() => _TopCrisisState();
}

class _TopCrisisState extends State<TopCrisis> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Stack(
        fit: StackFit.expand,
        children: <Widget>[

          ListView(
            children: <Widget>[
              Text(
                "WHO",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.height / 18,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                    fontFamily: "MontSerrat",
                    letterSpacing: 0),
              ),
              Padding(
                padding: EdgeInsets.all(MediaQuery.of(context).size.width/10),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) =>ResWho()));
                  },
                  child: Image.asset(
                    "asset/topics/res_who.png",
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
                        MaterialPageRoute(builder: (context) =>TopWho1()));
                  },
                  child: Image.asset(
                    "asset/topics/topic_who1.png",
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
                        MaterialPageRoute(builder: (context) =>TopWho2()));
                  },
                  child: Image.asset(
                    "asset/topics/topic_who2.png",
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
