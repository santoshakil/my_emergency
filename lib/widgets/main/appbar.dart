import 'package:flutter/material.dart';

appBar() {
  return AppBar(
    backgroundColor: Colors.red[300],
    elevation: 0.0,
    title: Text(
      'My Emergency',
      style: TextStyle(color: Colors.black87),
    ),
    actions: [
      IconButton(
        icon: Icon(Icons.notification_important),
        onPressed: () {},
      )
    ],
  );
}
