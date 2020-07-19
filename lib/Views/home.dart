import 'package:RouteMate/Views/account.dart';
import 'package:flutter/material.dart';
import 'package:RouteMate/Views/map.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  final List<Widget> _children = [Home(), Map(), Account()];

  String name = 'Yes';

  String CreateTitle() {
    return "The name is " + this.name;
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex], // new
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        fixedColor: Colors.white,
        backgroundColor: Colors.blueGrey,
        items: [
          BottomNavigationBarItem(
              icon: new Icon(Icons.home), title: new Text('Home')),
          BottomNavigationBarItem(
              icon: new Icon(Icons.directions_car), title: new Text('Models')),
          BottomNavigationBarItem(
              icon: new Icon(Icons.person), title: new Text('Info'))
        ],
      ),
    );
  }
}
