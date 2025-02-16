import 'dart:math';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_apps/introPage.dart';
import 'package:my_apps/splashScreen.dart';
import 'package:my_apps/widgets/rounde_btn.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MyHomeState();
  }
}


class MyHomeState extends State<MyHomePage>{

  var myOpacity = 1.0;
  bool isvisible = true;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold (
      appBar: AppBar(
        title: Text("Note"),
        backgroundColor: Colors.amber,
        actions: [
          Stack(children: [
            Positioned(
            child: Icon(
            Icons.notification_add))
          
          ],)
        ],
        
      ),


    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedOpacity(opacity: myOpacity, curve: Curves.slowMiddle, duration: Duration(seconds: 2), 
          child:  Container(
            width: 200,
            height: 100,
            color: Colors.blue,
          ),),
          ElevatedButton(onPressed: (){
            
            setState(() {
              if(isvisible){
                myOpacity =  0.0;
                isvisible = false;
              }
              else{
                myOpacity = 1.0;
                isvisible = true;
              }
            });
          },
           child: Text('Colse'))
        ],
      ),
    ) 
    
    );
  }
}
