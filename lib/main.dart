import 'dart:math';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_apps/data/local/db_helper.dart';
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
      home: splashscreen(),
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
  //DBHelper  db = DBHelper();
  RangeValues values = RangeValues(0, 1);
  var ft = TextEditingController();
  var inch = TextEditingController();
  var result = "";
  var bgColo = Colors.black38;

   List<Map<String, dynamic>> allNotes = [];

   DBHelper? dbRef;
  void initState() {
    super.initState();
    dbRef = DBHelper.getInstance;
    getNotes();
  }

  void getNotes() async{
    allNotes = await dbRef!.getAllNotes();
    setState(() {
      
    });
  }
  @override
  Widget build(BuildContext context) {
    
    RangeLabels labels = RangeLabels(values.start.toString(), values.end.toString()); 
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


    body: allNotes.isNotEmpty ? ListView.builder( 
      itemCount: allNotes.length,
      itemBuilder:(_, index){
        return ListTile(
          leading: Text("${allNotes[index][DBHelper.COLUMN_NOTE]}"),
          title: Text(allNotes[index][DBHelper.COLUMN_TITLE]),
          subtitle: Text(allNotes[index][DBHelper.COLUMN_DEC]),
        );
    } ) :Center(
      child: Text("No note yet"),
    ),
     
     floatingActionButton: FloatingActionButton(
      onPressed: () async{
      bool check = await dbRef!.addNote(mTitle: "Myself", mDesc: "My name is rayhan.");
      If(check){
        getNotes(); 
      }
     },child: Icon(Icons.add),),
    );
  }
}
