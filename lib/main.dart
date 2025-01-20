import 'dart:math';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
            icon: Icon(Icons.apps_sharp, ),
            onPressed: () {  
            },)],
         title: Text("My App"),
      ),

      
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: const Color.fromARGB(115, 21, 17, 17),
        child: Stack(
          children: [
             Positioned(
          top: 20,
          right: 20,
          child: Container(
          height: 100,
          width: 100,
          color: Colors.red,
        ),
        ),
        Positioned(
          top: 15,
          right: 15,
          child: Container(
          height: 100,
          width: 100,
          color: Colors.green,
        ))
        
          ],
        )
        
      )
    );
  }
}

