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
class TopWho2 extends StatefulWidget {
  @override
  _TopWho2State createState() => _TopWho2State();
}

class _TopWho2State extends State<TopWho2> {
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
                    fontFamily: "Roboto",
                    letterSpacing: 0),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 20),
              Image.asset(
                "asset/topics/topic_who2ss.png",
                height: MediaQuery.of(context).size.height / 2.2,
                width: MediaQuery.of(context).size.width / 2,
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 20),
              Text(
                '''Good health is essential to sustain economic and social development and poverty reduction. Access to needed health services is crucial for maintaining and improving health.
Universal Health Coverage, also known as UHC, means that all individuals and communities receive the health services they need without suffering financial hardship. It includes the full spectrum of essential, quality health services, from health promotion to prevention, treatment, rehabilitation, and palliative care.
UHC enables everyone to access the services that address the most significant causes of disease and death, and ensures that the quality of those services is good enough to improve the health of the people who receive them.
Moving towards UHC requires strengthening health systems in all countries. When people have to pay most of the cost for health services out of their own pockets, the poor are often unable to obtain many of the services they need, and even the rich may be exposed to financial hardship in the event of severe or long-term illness.
WHO and its partners have agreed on a solution that has yet to be implemented. Primary health care is an approach to health and wellbeing centred on the needs and circumstances of individuals, families and communities. It is about providing whole-person care for health needs throughout life, not just treating a set of specific diseases. Primary health care ensures people receive comprehensive care, ranging from promotion and prevention to treatment, rehabilitation and palliative care as close as feasible to people’s everyday environment.
To meet the health workforce requirements of the Sustainable Development Goals and universal health coverage targets, over 18 million additional health workers are needed by 2030. Gaps in the supply of and demand for health workers are concentrated in low- and lower-middle-income countries. The growing demand for health workers is projected to add an estimated 40 million health sector jobs to the global economy by 2030.
Key Facts
•	At least half of the world’s population still do not have full coverage of essential health services.
•	About 100 million people are still being pushed into extreme poverty (defined as living on 1.90 USD or less a day) because they have to pay for health care.
•	Over 800 million people (almost 12% of the world’s population) spent at least 10% of their household budgets to pay for health care.
•	All UN Member States have agreed to try to achieve universal health coverage (UHC) by 2030, as part of the Sustainable Development Goals.
Questions to keep in mind:
•	What are the major impediments that prevent UHC from happening?
•	How can it be financed?
•	What are the main requirements for countries to achieve UHC?''',
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
