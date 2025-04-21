import 'package:flutter/material.dart';
import 'package:my_apps/main.dart';

class Intropage extends StatelessWidget{
  var nameFromHome;
  RangeValues values = const RangeValues(0, 1);
  Intropage(this.nameFromHome, {super.key});
  @override
  Widget build(BuildContext context) {
    RangeLabels labels = RangeLabels(values.start.toString(), values.end.toString()); 
    return Scaffold(
      appBar: AppBar( 
        title: const Text('Intro page'),
    ),

    body:Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("$nameFromHome",style: const TextStyle(fontSize: 21),),
          ElevatedButton(onPressed: (){
            Navigator.pop(context);
          }, child: const Text("Back")),
          RangeSlider(values: values, 
          onChanged: (newValue){
            values = newValue;
            

          }),
        ],
      ),
    )
    );
  }
  
}