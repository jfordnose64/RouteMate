import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Center(
        child: Text(
          'VolvoPedia',
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
