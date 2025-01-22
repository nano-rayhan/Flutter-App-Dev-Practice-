import 'package:flutter/material.dart';
import 'package:my_apps/main.dart';

class Intropage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: Text('Intro page'),
    ),

    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Introduction page ', style: TextStyle(fontSize: 30),),
          ElevatedButton(onPressed: (){
             Navigator.push(context, 
             MaterialPageRoute(builder: (context) => MyHomePage(),));
          }, child: Text('HomePage'))
        ],
      ),
    ),
    );
  }
  
}