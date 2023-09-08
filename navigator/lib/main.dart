import 'package:flutter/material.dart';
import 'package:navigator/homepage.dart';


void main(){
  runApp(firstpage());
}
class firstpage extends StatelessWidget {
  const firstpage ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      home:navigation(),
    );
  }
}