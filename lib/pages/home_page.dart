import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static final String id = "home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _openDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Log Out"),
            content: Text("Are sure to exit"),
            actions: [
              FlatButton(
                color: Colors.pink,
                child: Text("cancel"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              FlatButton(
                color: Colors.cyanAccent,
                child: Text("confirm"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlatButton(
          child: Text("open dialog"),
          color: Colors.cyanAccent,
          onPressed: () {
            _openDialog();
          },
        ),
      ),
    );
  }
}
