import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TheCity extends StatefulWidget {
  @override
  _TheCityState createState() => _TheCityState();
}

class _TheCityState extends State<TheCity> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:
      Stack(fit: StackFit.expand,
      children: <Widget>[
        new DecoratedBox(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("asset/commit_background.png"),
                    fit: BoxFit.cover))),

        Padding(
          padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height / 25),
          child: Text(
            "The City",textAlign: TextAlign.center,
            style: TextStyle(
                color: Color.fromRGBO(0, 119, 172, 5),
                fontSize: MediaQuery.of(context).size.height / 18,
                decoration: TextDecoration.none,
                fontWeight: FontWeight.bold,
                fontFamily: "Roboto",
                letterSpacing: 0),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top:MediaQuery.of(context).size.height / 7),
          child:Row(children: <Widget>[
            Column(children: <Widget>[
              Padding(
                padding:  EdgeInsets.only(left:MediaQuery.of(context).size.width / 30),
                child: GestureDetector(
                  onTap: _launchURLBus,
                  child: Image.asset(
                    "asset/theCity/theCity_bus.png",
                    height:MediaQuery.of(context).size.height/2.8,fit: BoxFit.fill,
                    width:MediaQuery.of(context).size.width/2.1,alignment: Alignment.topLeft,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left:MediaQuery.of(context).size.width / 30),
                child: Padding(
                  padding: EdgeInsets.only(top:MediaQuery.of(context).size.height / 45),
                  child: GestureDetector(
                    onTap: _launchURLTaxi,
                    child: Image.asset(
                      "asset/theCity/theCity_taxi.png",
                      height:MediaQuery.of(context).size.height/5,fit: BoxFit.fill,
                      width:MediaQuery.of(context).size.width/2.1,alignment: Alignment.topLeft,
                    ),
                  ),
                ),
              ),




            ],),

            Padding(
              padding: EdgeInsets.only(left:MediaQuery.of(context).size.width/45),
              child: Column(children: <Widget>[
                GestureDetector(onTap:_launchURLCity,
                  child: Image.asset(
                    "asset/theCity/theCity_city.png",
                    height:MediaQuery.of(context).size.height/3.5,fit: BoxFit.fill,
                    width:MediaQuery.of(context).size.width/2.3,alignment: Alignment.topLeft,
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(top:MediaQuery.of(context).size.height/100),
                  child: Image.asset(
                    "asset/theCity/theCity_school.png",
                    height:MediaQuery.of(context).size.height/3.5,fit: BoxFit.fill,
                    width:MediaQuery.of(context).size.width/2.3,alignment: Alignment.topLeft,
                  ),
                ),






              ],),
            )






          ],)
        )





      ],


      )

      ,);
  }
}

_launchURLBus() async {
  const url = 'http://www.transporturban.ro/ro/iasi/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURLTaxi() async {
  const url = 'https://www.taximetre.ro/taxi/iasi/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURLCity() async {
  const url = 'https://www.google.com/maps?client=firefox-b-d&q=Iasi+map&um=1&ie=UTF-8&sa=X&ved=0ahUKEwioy8_ZhYzlAhXGGuwKHR5XA10Q_AUIESgB';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

