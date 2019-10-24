import 'package:flutter/material.dart';

import 'package:flutter_lupu2/commit_afterTap/commit_unhrc.dart';
import 'package:flutter_lupu2/commit_afterTap/commit_who.dart';
import 'package:flutter_lupu2/commit_afterTap/commit_crisis.dart';
import 'package:flutter_lupu2/commit_afterTap/commit_ecosoc.dart';
import 'package:flutter_lupu2/commit_afterTap/commit_specpol.dart';
import 'package:flutter_lupu2/commit_afterTap/commit_unsc.dart';

class TheConference extends StatefulWidget {
  @override
  _TheConferenceState createState() => _TheConferenceState();
}

class _TheConferenceState extends State<TheConference> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Stack(fit: StackFit.expand,
    children: <Widget>[new DecoratedBox(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("asset/commit_background.png"),
                fit: BoxFit.cover))),

      ListView(children: <Widget>[
        Text(
          "The Conference",textAlign: TextAlign.center,
          style: TextStyle(
              color: Color.fromRGBO(0, 119, 172, 5),
              fontSize: MediaQuery.of(context).size.height / 18,
              decoration: TextDecoration.none,
              fontWeight: FontWeight.bold,
              fontFamily: "Roboto",
              letterSpacing: 0,
          fontStyle: FontStyle.normal),
        ),

        Container(height: MediaQuery.of(context).size.height/4,
          child: Row(children: <Widget>[Image.asset(
            "asset/aboutUs/tc_rac1.png",
            height:MediaQuery.of(context).size.height/3 ,
            width:MediaQuery.of(context).size.width/2,
          ),
    SizedBox(width:MediaQuery.of(context).size.width/9 ,),
    Image.asset(
    "asset/aboutUs/tc_rac2.png",
    height:MediaQuery.of(context).size.height/3 ,
    width:MediaQuery.of(context).size.width/2.8,)

          ],),
        ),

        Container(padding: const EdgeInsets.all(10.0),
          child: Text(
            '''An MUN Conference is an academic simulation 
of the United Nations where students play the role of delegates from  different countries and attempt to solve real world issues by means of the policies and perspectives of their assigned
country. Technically speaking, an MUN is like an 
improvised play, where everyone has to play a different role.''',

            style: TextStyle(
                color: Color.fromRGBO(17, 29, 74, 5),
                fontSize: MediaQuery.of(context).size.height / 45,
                decoration: TextDecoration.none,
                fontWeight: FontWeight.normal,
                fontStyle: FontStyle.normal,
                wordSpacing: 0,
                fontFamily: "Roboto",
                letterSpacing: 0),
          ),
        ),

        Image.asset(
          "asset/aboutUs/tc_1.png",
          height:MediaQuery.of(context).size.height/3 ,
          width:MediaQuery.of(context).size.width/2.8,),
        Container(padding: const EdgeInsets.all(30.0),
          child: Text('''From the beginning, IasiMUN has been the 
product of student ambition and ingenuity. The 
first edition of IasiMUN in 2009 was the 
brainchild of a group of students at Colegiul 
National Emil Racovita, who were inspired to 
create a forum for students to learn about the 
challenges facing the world while also honing 
their skills as thinkers and people who would 
one day make a positive difference in the world. 
Years later, the IasiMUN conference continues to 
inspire new generations of students that take 
part in its tradition.

The spirit of IasiMUN is to think big; to imagine 
solutions on a global scale while 
accommodating the nuances of culture, history, 
and interests in each country represented in the 
UN. This is no small task and requires each 
student to take seriously their role in the 
conference. The value of participating in 
IasiMUN is that it shows its participants that 
their voice matters. The process of working with 
and persuading other people is messy, 
frustrating, and painful. And the process of 
getting things accomplished takes grit, self-
doubt, and perseverance – and even then, best 
efforts are often met with failure. That harrowing 
process distills student efforts and ideas into 
extraordinary debates and solutions.
''',textAlign: TextAlign.left,

            style: TextStyle(
                color: Color.fromRGBO(17, 29, 74, 5),
                fontSize: MediaQuery.of(context).size.height / 45,
                decoration: TextDecoration.none,
                fontWeight: FontWeight.normal,
                fontStyle: FontStyle.normal,
                wordSpacing: 0,
                fontFamily: "Roboto",
                letterSpacing: 0),
          ),
        ),
        Image.asset(
          "asset/aboutUs/tc_2.png",
          height:MediaQuery.of(context).size.height/3 ,
          width:MediaQuery.of(context).size.width/2.8,),
        Container(padding: const EdgeInsets.all(10.0),
          child: Text('''Our hope is that through IasiMUN, you will see
your place in the world as something more than difference, recognizing the ambition and ingenuity it requires to make that difference.
Welcome, and good luck.''',

            style: TextStyle(
                color: Color.fromRGBO(17, 29, 74, 5),
                fontSize: MediaQuery.of(context).size.height / 45,
                decoration: TextDecoration.none,
                fontWeight: FontWeight.normal,
                fontStyle: FontStyle.normal,
                wordSpacing: 0,
                fontFamily: "Roboto",
                letterSpacing: 0),
          ),
        ),

        Text(
          "The team",textAlign: TextAlign.center,
          style: TextStyle(
              color: Color.fromRGBO(17, 29, 74, 5),
              fontSize: MediaQuery.of(context).size.height / 25,
              decoration: TextDecoration.underline,
              decorationColor: Color.fromRGBO(17, 29, 74, 5),
              decorationStyle: TextDecorationStyle.solid,
              fontWeight: FontWeight.bold,
              fontFamily: "Roboto",
              letterSpacing: 0),
        ),
        SizedBox(height: MediaQuery.of(context).size.height/20),
        Text(
          "ANDREI LOGHIN",textAlign: TextAlign.center,
          style: TextStyle(
              color: Color.fromRGBO(17, 29, 74, 5),
              fontSize: MediaQuery.of(context).size.height / 18,
              decoration: TextDecoration.none,
              fontWeight: FontWeight.bold,
              fontFamily: "Roboto",
              letterSpacing: 0),
        ),
        Text(
          "Secretary-General",textAlign: TextAlign.center,
          style: TextStyle(
              color: Color.fromRGBO(17, 29, 74, 5),
              fontSize: MediaQuery.of(context).size.height / 33,
              decoration: TextDecoration.none,
              fontWeight: FontWeight.normal,

              letterSpacing: 0),
        ),
        Image.asset(
          "asset/aboutUs/tc_loghin.png",
          height:MediaQuery.of(context).size.height/2,
          width:MediaQuery.of(context).size.width,
        ),
        SizedBox(height: MediaQuery.of(context).size.height/20),
        Text(
          "IOANA TAMACIUC",textAlign: TextAlign.center,
          style: TextStyle(
              color: Color.fromRGBO(17, 29, 74, 5),
              fontSize: MediaQuery.of(context).size.height / 18,
              decoration: TextDecoration.none,
              fontWeight: FontWeight.bold,
              fontFamily: "Roboto",
              letterSpacing: 0),
        ),
        Text(
          "Deputy Secretary-General",textAlign: TextAlign.center,
          style: TextStyle(
              color: Color.fromRGBO(17, 29, 74, 5),
              fontSize: MediaQuery.of(context).size.height / 33,
              decoration: TextDecoration.none,
              fontWeight: FontWeight.normal,

              letterSpacing: 0),
        ),
        Image.asset(
          "asset/aboutUs/tc_tamaciuc.png",
          height:MediaQuery.of(context).size.height/2,
          width:MediaQuery.of(context).size.width,
        ),
        SizedBox(height: MediaQuery.of(context).size.height/20),
        Text(
          "TUDOR POPESCU",textAlign: TextAlign.center,
          style: TextStyle(
              color: Color.fromRGBO(17, 29, 74, 5),
              fontSize: MediaQuery.of(context).size.height / 18,
              decoration: TextDecoration.none,
              fontWeight: FontWeight.bold,
              fontFamily: "Roboto",
              letterSpacing: 0),
        ),
        Text(
          "Head Of Administrative Staff",textAlign: TextAlign.center,
          style: TextStyle(
              color: Color.fromRGBO(17, 29, 74, 5),
              fontSize: MediaQuery.of(context).size.height / 33,
              decoration: TextDecoration.none,
              fontWeight: FontWeight.normal,

              letterSpacing: 0),
        ),
        Image.asset(
          "asset/aboutUs/tc_popescu.png",
          height:MediaQuery.of(context).size.height/2,
          width:MediaQuery.of(context).size.width,
        ),
        SizedBox(height: MediaQuery.of(context).size.height/20),
        Text(
          "ANDREI MIHOCI",textAlign: TextAlign.center,
          style: TextStyle(
              color: Color.fromRGBO(17, 29, 74, 5),
              fontSize: MediaQuery.of(context).size.height / 18,
              decoration: TextDecoration.none,
              fontWeight: FontWeight.bold,
              fontFamily: "Roboto",
              letterSpacing: 0),
        ),
        Text(
          "Head Of Junior Administrative Staff",textAlign: TextAlign.center,
          style: TextStyle(
              color: Color.fromRGBO(17, 29, 74, 5),
              fontSize: MediaQuery.of(context).size.height / 33,
              decoration: TextDecoration.none,
              fontWeight: FontWeight.normal,

              letterSpacing: 0),
        ),
        Image.asset(
          "asset/aboutUs/tc_mihoci.png",
          height:MediaQuery.of(context).size.height/2,
          width:MediaQuery.of(context).size.width,
        ),
        SizedBox(height: MediaQuery.of(context).size.height/20),
        Text(
          "GEORGIA GRADU",textAlign: TextAlign.center,
          style: TextStyle(
              color: Color.fromRGBO(17, 29, 74, 5),
              fontSize: MediaQuery.of(context).size.height / 18,
              decoration: TextDecoration.none,
              fontWeight: FontWeight.bold,
              fontFamily: "Roboto",
              letterSpacing: 0),
        ),
        Text(
          "Conference Manager",textAlign: TextAlign.center,
          style: TextStyle(
              color: Color.fromRGBO(17, 29, 74, 5),
              fontSize: MediaQuery.of(context).size.height / 33,
              decoration: TextDecoration.none,
              fontWeight: FontWeight.normal,

              letterSpacing: 0),
        ),
        Image.asset(
          "asset/aboutUs/tc_gradu.png",
          height:MediaQuery.of(context).size.height/3,
          width:MediaQuery.of(context).size.width,
        ),












      ],)


























    ],


    ),);
  }
}
