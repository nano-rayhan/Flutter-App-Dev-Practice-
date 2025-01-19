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

        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,

         title: Text("My App"),
      ),

      
       body:Wrap(
        
        direction: Axis.vertical,
        alignment: WrapAlignment.end,
        spacing: 11,
        runSpacing: 11,
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.amber,
          ),
          Container(
            height: 100,
            width: 100,
            color: const Color.fromARGB(255, 22, 123, 163),
          ),
          Container(
            height: 100,
            width: 100,
            color: const Color.fromARGB(255, 48, 130, 57),
          ),Container(
            height: 100,
            width: 100,
            color: const Color.fromARGB(255, 114, 6, 66),
          ),
          Container(
            height: 100,
            width: 100,
            color: const Color.fromARGB(255, 53, 21, 123),
          ),
          Container(
            height: 100,
            width: 100,
            color: const Color.fromARGB(255, 37, 33, 22),
          ),
        ],
       )

    );
  }
}

