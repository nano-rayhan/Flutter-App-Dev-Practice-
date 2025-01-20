import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_apps/widgets/rounde_btn.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  callback(){

  }
  var emailText = TextEditingController();
  var passText = TextEditingController();
  int _counter = 0;
  


  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var arrColor = [Colors.red,
    Colors.black,
    Colors.purple,
    Colors.blue,
    Colors.orange,
    Colors.black54];
    var arrnames = ['Rayhan', 'Rahim', 'Sahed', 'Ashik'];
    var time = DateTime.now();
    return Scaffold(
      appBar: AppBar(

        backgroundColor: const Color.fromARGB(255, 54, 205, 69),
        actions: [
          IconButton(
            icon: Icon(Icons.accessibility_outlined), 
            onPressed: () {  
            },)],
         title: Text("My App"),
      ),

      
      body:GridView.count(crossAxisCount: 3,
       
      children: [
        Padding(padding: const EdgeInsets.all(5),
        child: Container(color: Colors.orange,),
        ),

        Padding(padding: const EdgeInsets.all(5),
        child: Container(
          child: GridView.count(crossAxisCount: 2,
          crossAxisSpacing: 3,
            children: [
              Container(color: Colors.red,),
              Container(color: Colors.orange,),
            ],
          ))
        ),
        Padding(padding: const EdgeInsets.all(5),
        child: Container(color: Colors.purple,),
        ),
        Padding(padding: const EdgeInsets.all(5),
        child: Container(color: Colors.green,),
        ),
        Padding(padding: const EdgeInsets.all(5),
        child: Container(color: Colors.orange,),
        ),
        
      
      ],
       )

      
      
    );
  }
}

