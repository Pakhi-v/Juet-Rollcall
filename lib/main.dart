import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: "My Attendance",
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Attendance"),
      ),
      body: Container(
        child: Center(child: Text("Hello Juetians")),
      )
    );
  }
}