import 'package:flutter/material.dart';
import 'package:travel_ui/constants.dart';
import 'package:travel_ui/widgets/location_slider.dart';
import 'package:travel_ui/widgets/search_section.dart';
import 'widgets/header_travel.dart';
import 'widgets/four_boxes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        backgroundColor: Colors.white,
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.white
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              HeaderTravelUI(),
              SizedBox(
                height: 40.0,
              ),
              SearchSection(),
              SizedBox(
                height: 40.0,
              ),
              FourBoxes(),
              SizedBox(
                height: 40.0,
              ),
              LocationSlider(),
            ],
        ),
      ),
    );
  }
}
