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
class TopUnhrc2 extends StatefulWidget {
  @override
  _TopUnhrc2State createState() => _TopUnhrc2State();
}

class _TopUnhrc2State extends State<TopUnhrc2> {
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
                "asset/topics/topic_unhrc2ss.png",
                height: MediaQuery.of(context).size.height / 2.2,
                width: MediaQuery.of(context).size.width / 2,
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 20),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text(
                  '''The arguments for and against the death penalty have been analyzed, dissected and mangled in legislative halls, churches, journals etc. It seems that everything that can be done to these arguments has already been done; and yet the controversy goes on, now and then bursting into flames as prison riots and heinous crimes deeply shock public opinion and provoke protests and clamorous demands for action. We must then conclude that the controversy has many more sides that it appears to have at first glance, and those who have engaged in it tended to give simple answers to very complex problems.
Although international law says that the use of the death penalty must be restricted to the most serious crimes, meaning intentional killing, many believe that the death penalty is never the answer. As it stands, statistics show that death penalty support ticks up after years of decline with the majority of executions taking place in China, Iran, Saudi Arabia, Vietnam and Iraq.
It will be helpful to remember that both crime and punishment are functionally related to the culture in which they occur. Many countries that retain the death penalty cite perceived public support for the punishment as a key barrier to progress towards abolition. When the majority of citizens support capital punishment, abolishing the death penalty risks undermining public confidence in the rule of law. Thus, the arguments of retribution, deterrence and reform must be kept in mind when deciding convicts’ fates.

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
