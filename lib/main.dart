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
      home:  MyHomePage(),
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
  var count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: Text("Stateful"),
        backgroundColor: Colors.amber,
        actions: [
          Stack(children: [
            Positioned(
          
            child: Icon(
            Icons.notification_add))
          
          ],)
        ],
        
      ),

      body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("$count", style: TextStyle(fontSize: 20),),
              ElevatedButton(onPressed: (){
                count++;
                setState(() {
                  
                });
              },
               child: Icon(Icons.plus_one)),
               ElevatedButton(onPressed: (){
                  count = 0;
                  setState(() {
                    
                  });
               }, child: Icon(Icons.remove))
            ],
          ),
      ),
    );
  }
}
