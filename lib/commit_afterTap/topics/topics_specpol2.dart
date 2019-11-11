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
class TopSpec2 extends StatefulWidget {
  @override
  _TopSpec2State createState() => _TopSpec2State();
}

class _TopSpec2State extends State<TopSpec2> {
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
                "asset/topics/topic_spec2ss.png",
                height: MediaQuery.of(context).size.height / 2.2,
                width: MediaQuery.of(context).size.width / 2,
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 20),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text(
                  '''The accountability of private military companies in creating and sustaining conflicts
Providing armed combat or security services in exchange for financial compensation, private military companies (PMC) seem to be the very product of our era's main drive: securing an efficient and successful job whenever the need arises. PMCs are traditionally hired with the purpose of replacing or backing-up an army or an armed group or in order to enhance overall effectiveness, and so they can be classified as such: active PMCs, willing to carry weapons into combat and passive PMCs, that focus on training and organizational issues.
In the last few decades, the use of private contractors has seen a significant rise, author P. W. Singer stating that the private military industry, "in geographic terms, it operates in over 50 different countries. It’s operated in every single continent but Antarctica." The increase in demand for such services has naturally determined the number of private military contractors that emerge on the market to bloom, now the Circuit being more diverse than ever. This business, however, carries a great deal of controversy due to the activity of certain PMCs in war zones in the last two decades. In October 2007, the UN published a study in which it criticized private contractors performing military duties, in spite of being originally hired as "security guards", which opened the debate of the accountability and power which should be invested in PMCs. Taking into consideration the fact that there is no international court that has jurisdiction over there corporations and that many countries, world powers such as the United States of America and the United Kingdom included, are not signatories to the 1989 United Nations Mercenary Convention banning the use of mercenaries, the question whether the presence of PMCs in active or post-conflict areas is justified and, furthermore, efficient and not being the vessel for carrying out a hidden agenda, as the situation in Iraq has brewed the suspicion.
The question of the role of PMCs remains valid and asks for common ground in the form of a solution to be found, be it further regulating the use of them and the responsibility and powers invested in them or taking even more strict measures.
''',
                  textAlign: TextAlign.justify,
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
