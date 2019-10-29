import 'package:flutter/material.dart';
import 'package:flutter_lupu2/committees.dart';
import 'package:flutter_lupu2/aboutUs.dart';
import 'package:flutter_lupu2/rulesOfProcedures.dart';
import 'package:flutter_lupu2/theCity.dart';
import 'package:flutter_lupu2/main.dart';
import 'package:flutter_lupu2/home.dart';
import 'package:flutter_lupu2/commit_afterTap/commit_unhrc.dart';
import 'package:flutter_lupu2/commit_afterTap/chairpersons/char_unhrc.dart';
import 'package:flutter_lupu2/side_menu_OnClickEvents.dart';
class TopWho1 extends StatefulWidget {
  @override
  _TopWho1State createState() => _TopWho1State();
}

class _TopWho1State extends State<TopWho1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new DecoratedBox(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("asset/commit_background.png"),
                      fit: BoxFit.cover))),
          ListView(
            children: <Widget>[
              Text(
                "TOPIC A",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(0, 119, 172, 5),
                    fontSize: MediaQuery.of(context).size.height / 18,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Roboto",
                    letterSpacing: 0),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 20),
              Image.asset(
                "asset/topics/topic_who1ss.png",
                height: MediaQuery.of(context).size.height / 2.2,
                width: MediaQuery.of(context).size.width / 2,
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 20),
              Text(
                ''' Depression is a highly common illness with more than 300 million people affected. It’s different from usual mood fluctuations or short-living emotional responses to everyday life challenges. It can cause the affected person to suffer greatly and function poorly at work, at school or in the family. At its worst, depression can lead to suicide. Almost 800.000 people die due to suicide every year. Suicide is the second leading cause of death in 15 to 29 year-olds.
Although depression is among the few treatable mental illnesses, less than half of those affected in the world (in many countries, fewer than 10%) receive them. The barriers to effective treatment vary from lack of resources or infrastructure, few trained healthcare providers or even social stigma associated with mental disorders. Another barrier is inaccurate assessment. In most countries, people who are depressed usually not correctly diagnosed, and those who do not have the disorder, are often misdiagnosed and prescribed antidepressants way too often.
But the factors that get a person to have this disorder are quite a lot. For starters, they can vary from social status, family and medical problems to just overall life quality.
''',
                style: TextStyle(
                    color: Color.fromRGBO(17, 29, 74, 5),
                    fontSize: MediaQuery.of(context).size.height / 45,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Roboto",
                    letterSpacing: 0),
              ),
            ],
          )
        ],
      ),
    );
  }
}
