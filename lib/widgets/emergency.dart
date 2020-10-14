import 'package:flutter/material.dart';

List<Widget> emergency() {
  card(text) {
    return Card(
      color: Colors.red[100],
      semanticContainer: true,
      elevation: 3.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  return [
    card('Eve Teasing'),
    card('Sexual Abuse'),
    card('Child Abuse'),
    card('Accident'),
    card('Snatching'),
    card('Corruption'),
  ];
}
