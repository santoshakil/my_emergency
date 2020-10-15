import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

toastForFloatingButton() {
  Fluttertoast.showToast(
    msg: "Emergency Signal is Sent",
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    backgroundColor: Colors.red,
    textColor: Colors.white,
    fontSize: 16.0,
  );
}

emergencyConditionsForFloatingButton() {
  print('Emergency Conditions');
}

var floatingButton = FloatingActionButton.extended(
  backgroundColor: Colors.red[200],
  elevation: 1,
  isExtended: true,
  label: Text('Emergency'),
  onPressed: () {
    emergencyConditionsForFloatingButton();
    toastForFloatingButton();
  },
);
