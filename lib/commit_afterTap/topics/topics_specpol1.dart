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
class TopSpec1 extends StatefulWidget {
  @override
  _TopSpec1State createState() => _TopSpec1State();
}

class _TopSpec1State extends State<TopSpec1> {
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
                    fontFamily: "MontSerrat",
                    letterSpacing: 0),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 20),
              Image.asset(
                "asset/topics/topic_spec1ss.png",
                height: MediaQuery.of(context).size.height / 2.2,
                width: MediaQuery.of(context).size.width / 2,
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width/20),
                child: Text(
                  '''Ever since the Age of Discovery, it has become obvious that not only is trade one of the fundamental pillars of human activities, but also that new trade routes can be worth their weight in gold to their founders. Naturally, centuries of technological and scientifical advancement have exponentially facilitated the process of shipping goods across the globe, but recent shifts on geopolitical factors, economical prowess and climate conditions have opened doors to prospects of future development, which some countries are already putting on paper.
One of the most ambitious projects of our era has to undoubtedly be the Belt and Road initiative brought forward by the People's Republic of China, aiming to build newer, more efficient trade routes all around the globe. This year's conference has all its focus on the idea concerning the establishment of a new global trade route through the Arctic, the project carrying the name of the Arctic Silk Road (or the Polar Silk Road, or even the Ice Silk Road). The initiative has attracted attention from many countries, many arctic states seeming to be open to the idea, but most remaining skeptic of China's involvement as a non-arctic state. States which might take significant damage in their economic sector after the completion of the project have been reticent towards it., as China’s increasing prominence in the region has prompted concerns over its long-term strategic objectives, including possible military deployment. However, the promising aspects of the new route cannot be overlooked, as shipping through the Northern Sea Route would shave almost 20 days off the regular time using the traditional route through the Suez Canal.
The dilemma looming over this bold projects stems from the concerns gravitating toward the threat the establishment of the Arctic Silk Road can pose for the countries willingly, or not, involved, be it of economic nature, or of the instability and uncertainty that can fall on them, national security and management of the natural resources being points of focus.
''',
                  style: TextStyle(
                      color: Color.fromRGBO(17, 29, 74, 5),
                      fontSize: MediaQuery.of(context).size.height / 45,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.bold,
                      fontFamily: "MontSerrat",
                      letterSpacing: 0),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
