import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/homepage.dart';
import 'package:flutter_application_1/pages/loginpage.dart';
import 'package:flutter_application_1/utils/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';


Future main() async{
  WidgetsFlutterBinding.ensureInitialized();

  Constants.prefs = await SharedPreferences.getInstance();

  runApp(MaterialApp(
    title: "My Attendance",
    home: Constants.prefs.getBool("loggedIn")==true
      ? HomePage()
      : LoginPage(),
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
    routes: {
      "/login":(context) => LoginPage(),
      "/home":(context) => HomePage()
    }
  ),
  );
}

