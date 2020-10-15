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

emergencySignal() {
  print('Emergency Signal');
}

var floatingButton = FloatingActionButton.extended(
  backgroundColor: Colors.red[300],
  elevation: 6,
  isExtended: true,
  label: Text('Emergency'),
  onPressed: () {
    emergencySignal();
    toastForFloatingButton();
  },
);
