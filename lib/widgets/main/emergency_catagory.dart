import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

emergencySignalCatagorized() {
  print('Emergency Signal catagorized');
}

toastForEmergencySignalCatagorized() {
  Fluttertoast.showToast(
    msg: "Emergency Signal Catagorized is Sent",
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    backgroundColor: Colors.red,
    textColor: Colors.white,
    fontSize: 16.0,
  );
}

List<Widget> emergencyCatagory() {
  card(text) {
    return GestureDetector(
      child: Card(
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
      ),
      onTap: () {
        toastForEmergencySignalCatagorized();
        emergencySignalCatagorized();
      },
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
