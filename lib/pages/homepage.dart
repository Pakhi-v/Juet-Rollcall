import 'package:flutter/material.dart';
import 'package:flutter_application_1/bg_image.dart';
import 'package:flutter_application_1/drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override initState() {
    super.initState();
  }

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Attendance"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[BgImage(),]
            ),
            
            ),
            ),
      
      drawer: MyDrawer(),
              
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
     floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Color.fromARGB(255, 209, 115, 228),
          foregroundColor: Colors.black,
          onPressed: () {
            // Respond to button press
          },
          icon: Icon(Icons.qr_code_scanner),
          label: Text('Tap to Scan QR Code'),
        )
      );
  }
}