import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_lupu2/committees.dart';
import 'package:flutter_lupu2/aboutUs.dart';
import 'package:flutter_lupu2/rulesOfProcedures.dart';
import 'package:flutter_lupu2/theCity.dart';
import 'package:flutter_lupu2/main.dart';
import 'package:flutter_lupu2/home.dart';
import 'package:flutter_lupu2/commit_afterTap/commit_unhrc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_lupu2/newsPage.dart';
import 'package:custom_navigator/custom_navigator.dart';
import 'package:flutter_lupu2/splashScreen.dart';

import 'package:flutter_lupu2/side_menu_OnClickEvents.dart';
import 'package:flutter/services.dart';

GlobalKey globalKey = new GlobalKey(debugLabel: "btm_nav_bar");
GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(new MaterialApp(title:"sal",home: Splash()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _currentIndex = 2;


  Widget callPage(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return TheCity();
        break;
      case 1:
        return Committess();
        break;
      case 2:
        return Home();

        break;

      case 3:
        return RulesOfProcedures();
        break;
      case 4:
        return AboutUs();
        break;
      case 5:
        return ImageClickEvent();
    }
  }

  @override
  Widget build(BuildContext context) {
    Navigator navigatorback;
    return new MaterialApp(

        home: Stack(
      fit: StackFit.expand,
      children: <Widget>[
        new DecoratedBox(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("asset/background.png"),
                    fit: BoxFit.cover))),
        new Container(
            //alignment: Alignment.topLeft,
            child: new DecoratedBox(
                decoration: BoxDecoration(
                    image: DecorationImage(
          image: AssetImage("asset/icon_appbar.png"),
          fit: BoxFit.fitWidth,
          alignment: Alignment.topCenter,
        )))),

        Scaffold(
            backgroundColor: Colors.transparent,

            appBar: AppBar(
              automaticallyImplyLeading: true,
              leading: IconButton(icon:Icon(Icons.arrow_back),
                onPressed:() => navigatorKey.currentState.maybePop()
              ),

              elevation: 0.0,
              backgroundColor: Colors.transparent,
            ),
            endDrawer: new Drawer(child: ImageClickEvent()),
            bottomNavigationBar: BottomNavigationBar(
              key: globalKey,

              currentIndex: _currentIndex,
              onTap: (index) {
                navigatorKey.currentState.popUntil((Route<dynamic> route) => route.isFirst);
                setState(() {
                  _currentIndex = index;
                });
              },
              items: [
                BottomNavigationBarItem(
                    icon: Image.asset(
                      'asset/icon_theCity.png',
                      height: 50,
                    ),
                    activeIcon: Image.asset(
                      'asset/activeIcons/activeIcon_theCity.png',
                      height: 50,
                    ),
                    title: Text('The city')),
                BottomNavigationBarItem(
                    icon: Image.asset(
                      'asset/icon_Commit.png',
                      height: 50,
                    ),
                    activeIcon: Image.asset(
                      'asset/activeIcons/activeIcon_Commit.png',
                      height: 50,
                    ),
                    title: Text('Commitesss')),
                BottomNavigationBarItem(
                    icon: Image.asset(
                      'asset/icon_Main.png',
                      height: 50,
                    ),
                    activeIcon: Image.asset(
                      'asset/activeIcons/activeIcon_home.png',
                      height: 50,
                    ),
                    title: Text('Main')),
                BottomNavigationBarItem(
                    icon: Image.asset(
                      'asset/icon_rulesOfProcedures.png',
                      height: 50,
                    ),
                    activeIcon: Image.asset(
                      'asset/activeIcons/activeIcon_rulesOfProcedures.png',
                      height: 50,
                    ),
                    title: Text('Rules')),
                BottomNavigationBarItem(
                    icon: Image.asset(
                      'asset/icon_aboutUs.png',
                      height: 50,
                    ),
                    activeIcon: Image.asset(
                      'asset/activeIcons/activeIcon_aboutUs.png',
                      height: 50,
                    ),
                    title: Text('about Us'))
              ],
            ),
            body: CustomNavigator(
                navigatorKey: navigatorKey,
                home: callPage(_currentIndex),
                pageRoute: PageRoutes.materialPageRoute))
      ],
    ));
  }
}
