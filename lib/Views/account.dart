import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Account extends StatefulWidget {
  @override
  _GetLocationPageState createState() => _GetLocationPageState();
}

class _GetLocationPageState extends State<Account> {
  String latitude = "142";
  String longitude = "";

  void _getCurrentLocation() async {
    Position position = await Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    print(position.latitude);

    setState(() {
      latitude = "${position.latitude}";
      longitude = "${position.longitude}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
                onPressed: () {
                  _getCurrentLocation();
                },
                child: Text("Find Location")),
            Text(latitude),
            Text(longitude)
          ],
        ),
      ),
    );
  }
}
