import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

slideshow() {
  return SizedBox(
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
  );
}
