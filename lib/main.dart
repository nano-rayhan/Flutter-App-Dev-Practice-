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
  var _width = 200.0;
  var _height = 100.0;
  bool flag = true;
  Color bgColor = Colors.blueGrey;
  
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
        children: [
          
            
            AnimatedContainer(duration: Duration(seconds: 1),
                  height: _height,
                  width: _width,
                  
                  color: bgColor,
              
              ),
              ElevatedButton(onPressed: (){
                
                setState(() {
                  if(flag){
                    _width = 100.0;
                    _height = 200.0;
                    bgColor = Colors.orange;
                    flag = false;
                  }
                  else{
                    _width = 200.0;
                    _height = 100.0;
                    bgColor = Colors.blueGrey;
                    flag  = true;
                  }
                });
              }, child: Text('Click')),
                
              
            
          
        ],
      ),
    ) 
    
    );
  }
}
