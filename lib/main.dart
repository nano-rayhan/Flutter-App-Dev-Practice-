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
      home:  splashscreen(),
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
  var wt = TextEditingController();
  var count = 0;
  
  RangeValues values = RangeValues(0, 1);
  var ft = TextEditingController();
  var inch = TextEditingController();
  var result = "";
  var bgColo = Colors.black38;
  @override
  Widget build(BuildContext context) {
    
    RangeLabels labels = RangeLabels(values.start.toString(), values.end.toString()); 
    return Scaffold (
      appBar: AppBar(
        title: Text("Be Healthy"),
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
      color: bgColo,
      child: Center(
      
      child: Container(
      width: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("BMI", style: TextStyle(fontSize: 30),),
        TextField(
          controller: wt,
          decoration: InputDecoration(
            label: Text('Enter yout weight'),
            prefixIcon: Icon(Icons.line_weight),
          ),
          keyboardType: TextInputType.number,
        ),
        SizedBox(height: 20,),
        TextField(
          controller: ft,
          decoration: InputDecoration(
            label: Text('Enter yout height(in feat)'),
            prefixIcon: Icon(Icons.line_weight),
          ),
          keyboardType: TextInputType.number,
        ),
        SizedBox(height: 20,),
        TextField(
          controller: inch,
          decoration: InputDecoration(
            label: Text('Enter yout height(inches)'),
            prefixIcon: Icon(Icons.line_weight),
          ),
          keyboardType: TextInputType.number,
        ),
        SizedBox(height:  20,),
        ElevatedButton(onPressed: (){
          var w = wt.text.toString();
          var f= ft.text.toString();
          var i = inch.text.toString();

          if(w != null && f!= null && i != null){
            var iw = int.parse(w);
            var ih = int.parse(f);
            var ii = int.parse(i);

            var tinch  = (ih*12) + ii;
            var tcm = tinch*2.54;
            var tm = tcm/100;

            var bmi = iw/(tm*tm);
            var msg = "";
            if(bmi>25){
              msg = "You are OverWeight!";
              bgColo = Colors.red;
            }
            else if(bmi<18){
              msg = "You are underWeight!";
              bgColo = Colors.blue;
            }
            else{
              msg = "you are Healthy!";
              bgColo = Colors.green;
            }

           setState(() {
              result = "$msg \n Your BMI is: ${bmi.toStringAsFixed(2)}";
           });
          }
          else{
            setState(() {
              result = "Please fill all the ";
            });
          }
        }, child: Text("Calculate")),
        SizedBox(height: 20,),
        Text(result, style: TextStyle(fontSize: 30),)
    ],),
    ) 
    )
    )
    );
  }
}
