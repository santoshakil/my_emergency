import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_emergency/widgets/floating_button.dart';

import 'widgets/crimes.dart';
import 'widgets/emergency.dart';
import 'widgets/floating_button.dart';

void main() {
  runApp(MaterialApp(
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
      appBar: AppBar(
        backgroundColor: Colors.red[300],
        elevation: 0.0,
        title: Text(
          'My Emergency',
          style: TextStyle(color: Colors.black87),
        ),
      ),
      body: SingleChildScrollView(
        primary: true,
        child: Column(
          //mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              height: 190.0,
              child: Carousel(
                dotSize: 4.0,
                dotSpacing: 15.0,
                dotColor: Colors.lightGreenAccent,
                indicatorBgPadding: 5.0,
                images: [
                  AssetImage('assets/images/1.jpg'),
                  AssetImage('assets/images/2.jpg'),
                  AssetImage('assets/images/3.jpg'),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10.0),
              height: 170.0,
              width: double.infinity,
              child: GridView.count(
                padding: EdgeInsets.all(10.0),
                childAspectRatio: 1.9,
                crossAxisCount: 3,
                children: emergency(),
              ),
            ),
            SizedBox(height: 10),
            Container(
                height: 60.0,
                color: Colors.red[100],
                child: Center(child: Text('Addvertisement 1'))),
            SizedBox(height: 10.0),
            Container(
                height: 60.0,
                color: Colors.red[100],
                child: Center(child: Text('Addvertisement 2'))),
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
