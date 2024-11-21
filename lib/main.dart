import 'dart:js';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) => AlertDialog(
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text("Close"))
                      ],
                      title: CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.yellow,
                        child: Icon(
                          Icons.person,
                          size: 40,
                          color: Colors.grey[800],
                        ),
                      ),
                      content: Text(
                        'Congratulations \n Your Account is Ready to Use. You will be redirected to the Home Page in a Few Seconds.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ));
          },
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              "Click here",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
