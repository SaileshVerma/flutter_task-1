import 'package:flutter/material.dart';
import 'package:flutter_task1/widgets/display_card_listview.dart';
import 'package:flutter_task1/widgets/mapbox.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Task 1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SafeArea(child: MapBox()),
          DisplayList(),
        ],
      ),
    );
  }
}
