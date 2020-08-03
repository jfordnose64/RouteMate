import 'package:RouteMate/Views/account.dart';
import 'package:RouteMate/Views/message.dart';
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

  final List<Widget> _children = [Message(), Map(), Account()];

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
        fixedColor: Colors.yellow,
        backgroundColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
              icon: new Icon(Icons.home), title: new Text('Routes')),
          BottomNavigationBarItem(
              icon: new Icon(Icons.directions_car), title: new Text('Map')),
          BottomNavigationBarItem(
              icon: new Icon(Icons.person), title: new Text('Test Location'))
        ],
      ),
    );
  }
}
