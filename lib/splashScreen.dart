import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_apps/introPage.dart';

class splashscreen extends StatefulWidget
{
  @override
  State<StatefulWidget> createState(){
    return _SplashscreenState();
  }
  
}
class _SplashscreenState extends State<splashscreen>{
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), (){
      Navigator.pushReplacement(context, 
      MaterialPageRoute(builder: (context) => Intropage()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(child: Text('Football',style: TextStyle(fontSize: 20),),),
      ),
    );
  }
}