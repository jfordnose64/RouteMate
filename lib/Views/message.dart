import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Center(
        child: Text(
          'Message',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 50,
            color: Colors.blue,
          ),
        ),
      ),
    ));
  }
}
