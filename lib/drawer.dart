import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
@override 
Widget build(BuildContext context) {
  return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text( 
                "Hello JUETian",
                style: TextStyle(color: Colors.white),
                ),
                decoration: BoxDecoration(color: Colors.purpleAccent),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Name"),
              subtitle: Text("Ashutosh Srivastava")
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text("Enrollment Number"),
              subtitle: Text("201B072"),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("Email"),
              subtitle: Text("201b072@jeutguna.in")
            ),
          ],
        )
        );
}

}