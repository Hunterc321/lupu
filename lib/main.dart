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
import 'package:custom_navigator/custom_navigator.dart';

import 'package:flutter_lupu2/side_menu_OnClickEvents.dart';

GlobalKey globalKey = new GlobalKey(debugLabel: "btm_nav_bar");
GlobalKey<NavigatorState> mainNavigatorKey = GlobalKey<NavigatorState>();
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _currentIndex = 2;
  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

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
    }
  }

  @override
  Widget build(BuildContext context) {
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
              elevation: 0.0,
              backgroundColor: Colors.transparent,
            ),
            drawer: new Drawer(child: ImageClickEvent()),
            bottomNavigationBar: BottomNavigationBar(
              key: globalKey,
              currentIndex: _currentIndex,
              onTap: (index) {
                navigatorKey.currentState.maybePop();
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
