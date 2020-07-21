import 'package:RouteMate/app.dart';
import 'package:RouteMate/data_models/user_location.dart';
import 'package:RouteMate/services/location_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<UserLocation>(
      builder: (context) => LocationService().locationStream,
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: Scaffold(
            body: App(),
          )),
    );
  }
}
