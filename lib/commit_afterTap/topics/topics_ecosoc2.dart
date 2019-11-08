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
class TopEco2 extends StatefulWidget {
  @override
  _TopEco2State createState() => _TopEco2State();
}

class _TopEco2State extends State<TopEco2> {
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
                "TOPIC B",
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
                "asset/topics/topic_eco2ss.png",
                height: MediaQuery.of(context).size.height / 2.2,
                width: MediaQuery.of(context).size.width / 2,
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 20),
              Padding(
                padding:EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width/20),
                child: Text(
                  '''At a first deceptive glance, one might fear Malthusianism (the idea of overpopulation of Earth) come to life. Paradoxically, the younger generation is becoming narrower and narrower hence two children are no longer born to demographically substitute their parents after their death in order to maintain a constant number of individuals.
Today a record high of 83 countries, representing about half of the world’s population, report below-replacement level rates. By 2050 we will be talking about two-thirds of the world’s population being in this situation. Our tremendous and essential machine called the economy is running out of fuel causing likewise effects.
It follows that the lack of services and taxes trigger the difficulty of paying pensions and healthcare insurances by the governments, given the fact that between 1901 and 1981 the number of elders along with the costs of their pensions has doubled, whereas the one of newborns has halved.
Simultaneously, the lack of workforce results in work efficiency not being met and people receiving smaller wages due to the pressure put by the initial payments. Majorizing the retirement age is foreseen, but the overall productivity will be comparably lower as a result of an increase in the median age of the workforce.
To complete the disastrous scenario, a study has found that “10 % growth in the population ages 60 and older decreases growth in GDP per capita by 5.5%.” The consumer market, the good and services demand, the incentive to immigrate and self-sustainability are endangered. ECOSOC Committee, will you accept the challenge?
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
