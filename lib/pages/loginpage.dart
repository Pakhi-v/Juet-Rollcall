import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/homepage.dart';
import 'package:flutter_application_1/utils/constants.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final nameController = TextEditingController();
  final enrollmentController = TextEditingController();
  final emailController = TextEditingController();
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: Text("My Attendance"),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[Image.asset("assets/login.jpg", color: Colors.black.withOpacity(0.7),
        colorBlendMode: BlendMode.darken, fit: BoxFit.fill),
        Center(
          child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Card(
              child: Column(
                children: <Widget>[
                  Form
                            (child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(hintText: "Enter Name", labelText: "Name"),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: InputDecoration(hintText: "Enter Enrollment Number", labelText: "Enrollment Number"),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: InputDecoration(hintText: "Enter G-Suite Email", labelText: "G-Suite Email Address"),
                      ),
                    ],
                  ),
                )),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.red, // background
    foregroundColor: Colors.white, // foreground
  ),
  onPressed: () {

    Constants.prefs.setBool("loggedIn", true);
    Navigator.pushReplacementNamed(context, "/home");
  },
  child: Text("Sign In"),
)
                ],
              ),
            ),
          ),
      ),
        )

        ],
      ) 
    );
  }
}