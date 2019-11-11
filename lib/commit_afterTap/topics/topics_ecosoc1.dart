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
class TopEco1 extends StatefulWidget {
  @override
  _TopEco1State createState() => _TopEco1State();
}

class _TopEco1State extends State<TopEco1> {
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
                "asset/topics/topic_eco1ss.png",
                height: MediaQuery.of(context).size.height / 2.2,
                width: MediaQuery.of(context).size.width / 2,
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 20),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text(
                  '''If at the beginning of the Information Age, hacking was considered to be a rarity, in recent years, multiple words referring to internet crimes have become part of our colloquial language, as cybercrime is progressing in front of our eyes, at an incredibly fast pace. Granted that the access to the internet is more and more common amongst all countries, with 48% of the whole population being internet users, this has transformed it into the perfect place for crimes.
Cyber Attacks are classified by the United Nations into Cybercrime – when a person is harmed by an individual or a group by means of any type of modern telecommunication network – and Cyberwarfare including cyber offenses that cross international borders, such as espionage or terrorism. While these kinds of Cyber Attacks can affect the economy on a global scale, with nearly 600 billion US dollars being lost to cybercrime every year, close to 0.8% of the Global GDP, there are some instances in which illegal activities on the internet have been conducted in all good reasons.
One of the most famous cases is Anonymous, a hacktivist group (which uses technology to promote certain political agendas, ideologies and social movements) who started in 2003 but had its first official campaign in 2008, with many following. Over the years, they became known as the digital Robin Hoods or freedom fighters. Similarly, Julian Assange published millions of secret and illegally obtained documents through the WikiLeaks site, as he would call it, “for the greater good.”
Taking into consideration both the social and economic implications of this delicate issue, the delegates are invited to a debate which will establish the “wrong” or “right” status of hacking and hopefully will end with a clear legal framework proposition.
''',textAlign: TextAlign.justify,
                  style: TextStyle(
                      color: Color.fromRGBO(17, 29, 74, 5),
                      fontSize: MediaQuery.of(context).size.height / 50,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.normal,
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
