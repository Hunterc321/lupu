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
class TopEco3 extends StatefulWidget {
  @override
  _TopEco3State createState() => _TopEco3State();
}

class _TopEco3State extends State<TopEco3> {
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
                "TOPIC C",
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
                "asset/topics/topic_eco3ss.png",
                height: MediaQuery.of(context).size.height / 2.2,
                width: MediaQuery.of(context).size.width / 2,
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width/20),
                child: Text(
                  '''External debt is the amount of debt a country owes to foreign creditors: other governments, private commercial banks or global economic institutions such as the World Bank or the International Monetary Fund (IMF).
Commonly, the Least Developed Countries (LDCs) need to take out loans in order to continue their progress towards the market economy since they fail to deliver enough money to invest in development projects. Needless to say, they are not the only ones indebted (see Germany’s unpaid debt from World War II).
Nevertheless, more attention has been shown to the LDCs due to the rapidly growing debt recorded by António Guterres, the Secretary-General to have reached “seven point one trillion dollah in 2016, an increase of 80% since 2009...”. This evolution is caused, in many instances, by unforeseen social and economic changes, namely recessions, issues regarding the government of a country or simply delays in the time needed to reach the goals of the project the funds were used for, which overall triggers a vicious cycle.
A government which has to give large sums of money to external creditors may be compelled to reduce funding on vital sectors, such as healthcare, education, infrastructure, even plans regarding the protection of its environment, but scarcely military. Prolonged periods of time in which these departments are deprived of much-needed money can cast the economy into a recession from which it would be nigh impossible to recover from without help.
All things considered, numerous economists have come up with solutions, from which writing down or forgiving debt is the most debated and well-known one, although it can be considered morally wrong. This year’s ECOSOC meeting is expected to discover solutions in order to put an end to this complex and apparently unfathomable matter.
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
