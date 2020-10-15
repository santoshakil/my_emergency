import 'package:flutter/material.dart';

addvertise() {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Container(
          height: 60.0,
          color: Colors.red[100],
          child: Center(child: Text('Addvertisement 1'))),
      SizedBox(height: 10.0),
      Container(
          height: 60.0,
          color: Colors.red[100],
          child: Center(child: Text('Addvertisement 2'))),
    ],
  );
}
