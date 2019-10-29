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

class TopUnhrc1 extends StatefulWidget {
  @override
  _TopUnhrc1State createState() => _TopUnhrc1State();
}

class _TopUnhrc1State extends State<TopUnhrc1> {
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
                "asset/topics/topic_unhrc1ss.png",
                height: MediaQuery.of(context).size.height / 2.2,
                width: MediaQuery.of(context).size.width / 2,
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 20),
              Text(
                '''Contemporary slavery, known as modern slavery or neo-slavery, refers to institutional bondage that continues to occur in present-day society. Underdeveloped countries that lack education, economic freedom, the rule of law and a proper societal structure can create an environment that fosters the acceptance and propagation of slavery. Enslavement is prevalent in countries with vulnerable minority communities, though it also exists in developed countries. Sadly, slavery did not end with abolition in the 19th century. Instead, it changed its forms and continues to harm people in every country in the world. Some of the types of slavery may refer to forced labour, human trafficking, child slavery or forced and early marriage.
Neo-slavery is less about people owning other people, but more about being exploited, completely controlled by someone else, with no escape. In the older form of slavery, slave-owners spent more on getting slaves. The cost of keeping them healthy was considered a better investment than getting another slave to replace them. While today, people are easier to get at a lower price so replacing them becomes easier. Slaves are used in areas where they could easily be hidden while also creating a profit for the exploiter.
There are 40.3 million people defining neo-slavery. Their lives are controlled by their exploiters, they no longer have a free choice and they have to do as they’re told. Thus, the UNHRC committee is here to find new innovative solutions to finally put an end to this unbelievable and sad trauma.
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
