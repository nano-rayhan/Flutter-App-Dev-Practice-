import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_apps/introPage.dart';
import 'package:my_apps/main.dart';

class splashscreen extends StatefulWidget
{
  const splashscreen({super.key});

  @override
  State<StatefulWidget> createState(){
    return _SplashscreenState();
  }
  
}
class _SplashscreenState extends State<splashscreen>{
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), (){
      Navigator.pushReplacement(context, 
      MaterialPageRoute(builder: (context) => MyHomePage()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        
        child: Image.asset('assets/images/font3.png',fit: BoxFit.cover,),
      ),
    );
  }
}