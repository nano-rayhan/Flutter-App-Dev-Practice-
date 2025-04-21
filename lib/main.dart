import 'dart:async';
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
  const MyHomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyHomeState();
  }
}


class MyHomeState extends State<MyHomePage>{

  var myOpacity = 1.0;
  bool isFirst = true;

 @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(const Duration(seconds: 4),(){
      reload();
    });
  }
  void reload(){
    setState(() {
      isFirst = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold (
      appBar: AppBar(
        title: const Text("Note"),
        backgroundColor: Colors.amber,
        actions: const [
          Stack(children: [
            Positioned(
            child: Icon(
            Icons.notification_add))
          
          ],)
        ],
        
      ),


    body: ListWheelScrollView(itemExtent: 100,
     children: 
        [
          Container(
            width: double.infinity,
            color: Colors.blue,
          ),
          Container(
            width: double.infinity,
            color: Colors.blue,
          ),
          Container(
            width: double.infinity,
            color: Colors.blue,
          ),
          Container(
            width: double.infinity,
            color: Colors.blue,
          ),
          Container(
            width: double.infinity,
            color: Colors.blue,
          ),
          Container(
            width: double.infinity,
            color: Colors.blue,
          ),
          Container(
            width: double.infinity,
            color: Colors.blue,
          ),
          Container(
            width: double.infinity,
            color: Colors.blue,
          ),
        ]
     )
     
    
    );
  }
}
