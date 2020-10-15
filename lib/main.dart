import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_emergency/widgets/main/appbar.dart';
import 'package:my_emergency/widgets/main/floating_button.dart';
import 'package:my_emergency/widgets/main/slideshow.dart';
import 'widgets/main/crimes.dart';
import 'widgets/main/emergency_catagory.dart';
import 'widgets/main/floating_button.dart';
import 'widgets/main/addvertise.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Main(),
  ));
}

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[200],
      appBar: appBar(),
      body: SingleChildScrollView(
        primary: true,
        child: Column(
          //mainAxisSize: MainAxisSize.max,
          children: [
            slideshow(),
            SizedBox(height: 10.0),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10.0),
              height: 170.0,
              width: double.infinity,
              child: GridView.count(
                padding: EdgeInsets.all(10.0),
                childAspectRatio: 1.9,
                crossAxisCount: 3,
                children: emergencyCatagory(),
              ),
            ),
            SizedBox(height: 10.0),
            addvertise(),
            SizedBox(height: 10.0),
            Container(
              height: 400,
              child: GridView.count(
                padding: EdgeInsets.all(10.0),
                childAspectRatio: 1.9,
                crossAxisCount: 1,
                children: crimes(),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: floatingButton,
    );
  }
}
