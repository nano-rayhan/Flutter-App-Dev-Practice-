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
  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();
  var result = "";
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

      body: Container(
        color: Colors.blue.shade100,
        child:  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                keyboardType: TextInputType.number,
                controller: no1Controller,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  
                ),
                controller: no2Controller,
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){
                    var no1 = int.parse(no1Controller.text.toString());
                    var no2 = int.parse(no2Controller.text.toString());
                    var sum = no2 + no1;
                    result = '$sum';
                    setState(() {
                      
                    });
                  }, child: Text("Add")),
                  ElevatedButton(onPressed: (){
                    var no1 = int.parse(no1Controller.text.toString());
                    var no2 = int.parse(no2Controller.text.toString());
                    var sum = no1 - no2;
                    result = '$sum';
                    setState(() {
                      
                    });
                  }, child: Text("sub")),
                  ElevatedButton(onPressed: (){
                    var no1 = int.parse(no1Controller.text.toString());
                    var no2 = int.parse(no2Controller.text.toString());
                    var sum = no2 * no1;
                    result = '$sum';
                    setState(() {
                      
                    });
                  }, child: Text("mul")),
                  ElevatedButton(onPressed: (){
                    var no1 = int.parse(no1Controller.text.toString());
                    var no2 = int.parse(no2Controller.text.toString());
                    var sum = no1 / no2;
                    result = '$sum';
                    setState(() {
                      
                    });
                  }, child: Text("div")),
                  Text(result, style: TextStyle(fontSize: 20),)
                  
                ],
                
              )
              
            ],
          ),
        ),
      )
    );
  }
}
