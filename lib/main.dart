import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/homepage.dart';


void main(){
  runApp(MaterialApp(
    title: "My Attendance",
    home: HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
  ),
  );
}

