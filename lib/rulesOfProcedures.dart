import 'package:flutter/material.dart';

class RulesOfProcedures extends StatefulWidget {
  @override
  _RulesOfProceduresState createState() => _RulesOfProceduresState();
}

class _RulesOfProceduresState extends State<RulesOfProcedures> {
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
                "RULES OF",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(0, 119, 172, 5),
                    fontSize: MediaQuery.of(context).size.height / 20,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.normal,
                    fontFamily: "Robot",
                    letterSpacing: 0),
              ),
              Text(
                "PROCEDURES",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(0, 119, 172, 5),
                    fontSize: MediaQuery.of(context).size.height / 20,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.normal,
                    fontFamily: "Robot",
                    letterSpacing: 0),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 30),
              Padding(
                padding:
                    EdgeInsets.all(MediaQuery.of(context).size.height / 100),
                child: Image.asset(
                  "asset/rulesOP/rules_full.png",
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.fill,
                ),
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.height / 100),
                    child: Image.asset(
                      "asset/rulesOP/rules_definitions.png",
                      fit: BoxFit.fill,
                      height: MediaQuery.of(context).size.height / 4,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.height / 50),
                    child: Image.asset(
                      "asset/rulesOP/rules_conduct.png",
                      fit: BoxFit.fill,
                      height: MediaQuery.of(context).size.height / 4,
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 50),
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.height / 100),
                    child: Image.asset(
                      "asset/rulesOP/rules_points.png",
                      fit: BoxFit.fill,
                      height: MediaQuery.of(context).size.height / 4,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.height / 50),
                    child: Image.asset(
                      "asset/rulesOP/rules_regular.png",
                      fit: BoxFit.fill,
                      height: MediaQuery.of(context).size.height / 4,
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 50),
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.height / 100),
                    child: Image.asset(
                      "asset/rulesOP/rules_crisis.png",
                      fit: BoxFit.fill,
                      height: MediaQuery.of(context).size.height / 4,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.height / 50),
                    child: Image.asset(
                      "asset/rulesOP/rules_unsc.png",
                      fit: BoxFit.fill,
                      height: MediaQuery.of(context).size.height / 4,
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 50),
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.height / 100),
                    child: Image.asset(
                      "asset/rulesOP/rules_voting.png",
                      fit: BoxFit.fill,
                      height: MediaQuery.of(context).size.height / 4,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.height / 50),
                    child: Image.asset(
                      "asset/rulesOP/rules_reso.png",
                      fit: BoxFit.fill,
                      height: MediaQuery.of(context).size.height / 4,
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
