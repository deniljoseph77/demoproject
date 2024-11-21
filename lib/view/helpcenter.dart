import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Helpcenter(),));
}

class Helpcenter extends StatelessWidget {
   Helpcenter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text("Help Center"),
      ),
    );
  }
}
