import 'package:assignment/view/congratspage.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Drawer(),
    );


  }
}
