
import 'package:flutter/material.dart';
import 'package:flutter_lupu2/commit_afterTap/commit_unhrc.dart';
import 'package:flutter_lupu2/commit_afterTap/commit_who.dart';
import 'package:flutter_lupu2/commit_afterTap/commit_crisis.dart';
import 'package:flutter_lupu2/commit_afterTap/commit_ecosoc.dart';
import 'package:flutter_lupu2/commit_afterTap/commit_specpol.dart';
import 'package:flutter_lupu2/commit_afterTap/commit_unsc.dart';

class TheApp extends StatefulWidget {
  @override
  _TheAppState createState() => _TheAppState();
}

class _TheAppState extends State<TheApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:Stack(fit: StackFit.expand,
      children: <Widget>[
        new DecoratedBox(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("asset/commit_background.png"),
                    fit: BoxFit.cover))),
        ListView(children: <Widget>[
          Text(
            "TheApp",textAlign: TextAlign.center,
            style: TextStyle(
                color: Color.fromRGBO(0, 119, 172, 5),
                fontSize: MediaQuery.of(context).size.height / 18,
                decoration: TextDecoration.none,
                fontWeight: FontWeight.bold,
                letterSpacing: 0),
          ),
          SizedBox(height: MediaQuery.of(context).size.height/20),
          Image.asset(
            "asset/aboutUs/ta_ac.png",
              height:MediaQuery.of(context).size.height/3 ,
              width:MediaQuery.of(context).size.width,
          ),
          SizedBox(height: MediaQuery.of(context).size.height/20),
          Text(
            "COSMIN POPA",textAlign: TextAlign.center,
            style: TextStyle(
                color: Color.fromRGBO(17, 29, 74, 5),
                fontSize: MediaQuery.of(context).size.height / 18,
                decoration: TextDecoration.none,
                fontWeight: FontWeight.bold,
                letterSpacing: 0),
          ),
          Text(
            "Implementation & Services",textAlign: TextAlign.center,
            style: TextStyle(
                color: Color.fromRGBO(17, 29, 74, 5),
                fontSize: MediaQuery.of(context).size.height / 33,
                decoration: TextDecoration.none,
                fontWeight: FontWeight.normal,
                letterSpacing: 0),
          ),
          Image.asset(
            "asset/aboutUs/ta_cosmin.png",
            height:MediaQuery.of(context).size.height/2,
            width:MediaQuery.of(context).size.width,
          ),
          SizedBox(height: MediaQuery.of(context).size.height/20),
          Text(
            "ANDREI LUPASCU",textAlign: TextAlign.center,
            style: TextStyle(
                color: Color.fromRGBO(17, 29, 74, 5),
                fontSize: MediaQuery.of(context).size.height / 18,
                decoration: TextDecoration.none,
                fontWeight: FontWeight.bold,
                letterSpacing: 0),
          ),

          Text(
            "Implementation & Services",textAlign: TextAlign.center,
            style: TextStyle(
                color: Color.fromRGBO(17, 29, 74, 5),
                fontSize: MediaQuery.of(context).size.height / 33,
                decoration: TextDecoration.none,
                fontWeight: FontWeight.normal,
                letterSpacing: 0),
          ),
          Image.asset(
            "asset/aboutUs/ta_lupascu.png",
            height:MediaQuery.of(context).size.height/2,
            width:MediaQuery.of(context).size.width,
          ),
          SizedBox(height: MediaQuery.of(context).size.height/20),
          Text(
            "LAURA ILINCA NICA",textAlign: TextAlign.center,
            style: TextStyle(
                color: Color.fromRGBO(17, 29, 74, 5),
                fontSize: MediaQuery.of(context).size.height / 20,
                decoration: TextDecoration.none,
                fontWeight: FontWeight.bold,
                letterSpacing: 0),
          ),

          Text(
            "Project coordinator",textAlign: TextAlign.center,
            style: TextStyle(
                color: Color.fromRGBO(17, 29, 74, 5),
                fontSize: MediaQuery.of(context).size.height / 33,
                decoration: TextDecoration.none,
                fontWeight: FontWeight.normal,
                letterSpacing: 0),
          ),
          SizedBox(height: MediaQuery.of(context).size.height/20),
          Text(
            "STEFANA POPA",textAlign: TextAlign.center,
            style: TextStyle(
                color: Color.fromRGBO(17, 29, 74, 5),
                fontSize: MediaQuery.of(context).size.height / 20,
                decoration: TextDecoration.none,
                fontWeight: FontWeight.bold,
                letterSpacing: 0),
          ),

          Text(
            "User Interface & Design",textAlign: TextAlign.center,
            style: TextStyle(
                color: Color.fromRGBO(17, 29, 74, 5),
                fontSize: MediaQuery.of(context).size.height / 33,
                decoration: TextDecoration.none,
                fontWeight: FontWeight.normal,
                letterSpacing: 0),
          ),
          Image.asset(
            "asset/aboutUs/ta_si.png",
            height:MediaQuery.of(context).size.height/2,
            width:MediaQuery.of(context).size.width,
          ),
          SizedBox(height: MediaQuery.of(context).size.height/20),
          Text(
            "LEONARD HINGĂNESCU",textAlign: TextAlign.center,
            style: TextStyle(
                color: Color.fromRGBO(17, 29, 74, 5),
                fontSize: MediaQuery.of(context).size.height / 20,
                decoration: TextDecoration.none,
                fontWeight: FontWeight.bold,
                letterSpacing: 0),
          ),

          Text(
            "Photographer",textAlign: TextAlign.center,
            style: TextStyle(
                color: Color.fromRGBO(17, 29, 74, 5),
                fontSize: MediaQuery.of(context).size.height / 33,
                decoration: TextDecoration.none,
                fontWeight: FontWeight.normal,
                letterSpacing: 0),
          ),
          Image.asset(
            "asset/aboutUs/ta_lh.png",
            height:MediaQuery.of(context).size.height/2,
            width:MediaQuery.of(context).size.width,
          ),
          SizedBox(height: MediaQuery.of(context).size.height/20),
          Text(
            "Letter from the team",textAlign: TextAlign.center,
            style: TextStyle(
                color: Color.fromRGBO(17, 29, 74, 5),
                fontSize: MediaQuery.of(context).size.height / 25,
                decoration: TextDecoration.underline,
                decorationColor: Color.fromRGBO(17, 29, 74, 5),
                decorationStyle: TextDecorationStyle.solid,
                fontWeight: FontWeight.bold,
                letterSpacing: 0),
          ),
          SizedBox(height: MediaQuery.of(context).size.height/36),
          Container(padding: const EdgeInsets.all(10.0),
            child: Text(
              '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur gravida mi nibh, ut sagittis magna mattis eget. Duis dictum a ipsum at vehicula. In hac habitasse platea dictumst. Sed et ipsum lacinia, pellentesque orci nec, fermentum magna. Cras vel porta lectus. Praesent faucibus, erat sit amet sagittis convallis, risus mi accumsan ante, ut fringilla lectus odio sed diam. Phasellus porta gravida suscipit. Suspendisse hendrerit elit a ultricies venenatis. Morbi odio purus, ullamcorper gravida nibh et, auctor tempus lectus. Nunc consectetur gravida libero, vitae dapibus elit congue eget. In lacinia lorem risus, sit amet vulputate tortor facilisis elementum. Donec ante nisl, ornare vitae metus pulvinar, ultricies ullamcorper orci. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque convallis porta elementum. Nullam et malesuada purus.''',
              style: TextStyle(
                  color: Color.fromRGBO(17, 29, 74, 5),
                  fontSize: MediaQuery.of(context).size.height / 45,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.normal,
                  wordSpacing: 0,
                  letterSpacing: 0),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height/36),
          Text(
            "Laura Ilinca Nica,project coordinator",textAlign: TextAlign.right,
            style: TextStyle(
                color: Color.fromRGBO(17, 29, 74, 5),
                fontSize: MediaQuery.of(context).size.height / 45,

                fontWeight: FontWeight.normal,
                decoration: TextDecoration.underline,
                decorationColor: Color.fromRGBO(17, 29, 74, 5),
                decorationStyle: TextDecorationStyle.solid,
                letterSpacing: 0),
          ),
          SizedBox(height: MediaQuery.of(context).size.height/36),
          Container(padding: const EdgeInsets.all(10.0),
            child: Text(
    '''This project started out as a mere idea, without any hopes of it ever being finished by the beginning of IașiMUN 2019. I kept it a secret that I was working on it, as I didn't want to make any promises I couldn't keep. I had to analyze many videos from Indian guys. I had to spend much more time than what is considered healthy just staring at my phone screen, looking at the assets used by the apps on my phone. I had to choose and re-choose the colors, shape and re-shape the buttons, the menu, the icons...
    Making the design of an app wasn't easy. What motivated me was the fact that I worked with someone so passionate, so devoted to this goal, someone that always made me look forward to the "professional" meetings we were supposed to have, and that with me became the parent of this little child of ours that we call the IașiMUN app.''',
              style: TextStyle(
                  color: Color.fromRGBO(17, 29, 74, 5),
                  fontSize: MediaQuery.of(context).size.height / 45,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.normal,
                  wordSpacing: 0,
                  letterSpacing: 0),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height/36),
          Text(
            "Stefana Popa,UI & Design",textAlign: TextAlign.right,
            style: TextStyle(
                color: Color.fromRGBO(17, 29, 74, 5),
                fontSize: MediaQuery.of(context).size.height / 45,

                fontWeight: FontWeight.normal,
                decoration: TextDecoration.underline,
                decorationColor: Color.fromRGBO(17, 29, 74, 5),
                decorationStyle: TextDecorationStyle.solid,
                letterSpacing: 0),
          ),


























        ],)




      ],

    ) ,);
  }
}
