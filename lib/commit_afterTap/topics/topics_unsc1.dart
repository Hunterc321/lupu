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
import 'package:flutter_lupu2/side_menu_OnClickEvents.dart';

class TopUnsc1 extends StatefulWidget {
  @override
  _TopUnsc1State createState() => _TopUnsc1State();
}

class _TopUnsc1State extends State<TopUnsc1> {
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
                "TOPIC",
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
                "asset/topics/topic_unsc1.png",
                height: MediaQuery.of(context).size.height / 2.2,
                width: MediaQuery.of(context).size.width / 2,
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width/20),
                child: Text(
                  '''From Japan’s Imperialism, to the Taiwan Strait Issue and the Korean War, East Asia has been no stranger to political strain. Now, 66 years after the ceasefire in the Korean Peninsula, tensions have reached a new high. North Korea is still testing missiles and its close ties to China, which is not only trying to undermine democracy in Hong Kong, but has also been deploying its most accurate yet short range missiles in order to intimidate Taiwan, are not short of worrying. Besides, the “pillar of stability” in the region, Japan and South Korea, has destabilized severely. The deteriorating relations between the two countries, as a result of Japan’s behaviour during the colonization of Korea, are making it increasingly difficult for the United States to keep an eye on China and North Korea. Of course, Russia and China rejoice at the thought of less American presence in the area and at the lack of interest it seems to be showing for the row between its two allies. To make matters worse, the issue of the disputed Senkaku/Diaoyu Islands in the East China
Sea, the Dokdo/Takeshima Islands in the Sea of Japan is still standing strong and is being used as a tool by Russia in order to discourage Japan and Korea from collaborating closely with the US. Overall, the situation, albeit seemingly minor and not imminently dangerous, if not timely addressed, will have consequences for the international community. The purpose of this topic is to prevent the escalation of the current conflicts, as they can lead to disastrous developments. Delegates should keep in mind, among others: How should military escalation be prevented on the disputed islands?
What are the implications of the current dispute between Korea and Japan? How should they be addressed? To what extent should the US intervene?
How could the military tensions between China and Taiwan be alleviated? Are there any short term measures that can be taken in the case of North Korea?''',
                  textAlign: TextAlign.left,
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

