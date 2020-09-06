import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:popup_menu_project/popup_values.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool value = true;

  @override
  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        actions: [
//            PopupMenuButton<String>(
//              onSelected: onS,
//              itemBuilder: (BuildContext context) {
//                return PopupValues.choices.map((String choice) {
//                  return CheckedPopupMenuItem<String>(
//                    value: choice,
//                      child: Text(choice),
//                      );
//                }
//                ).toList();
//              },
//            )
//        ],
//      ),
//      body: ,
//    );

    //TODO Providery
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.location), title: Text('Location')),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.forward), title: Text('Forward')),
        ],
      ),
      tabBuilder: (context, i) {
        return CupertinoTabView(
          builder: (context) {
            return CupertinoPageScaffold(
              navigationBar: CupertinoNavigationBar(
                middle: (i == 0) ? CupertinoButton(
                  color: Colors.deepOrange,
                  onPressed: () {
                    print('onPressed');
                  },
                  child: Text('Log In'),
                ): CupertinoSwitch(
                  value: value,
                  onChanged: (bool) {
                    print(bool);
                    setState(() {
                      value = bool;
                    });
                  },
                ),
              ),
              child: Center(
                child: Column(
                  children: [
                    CupertinoButton(
                      color: Colors.deepOrange,
                      onPressed: () {
                        print('onPressed');
                      },
                      child: Text('Log In'),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  void onS(String a) {
    print(a);
  }
}
