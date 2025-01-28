import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper{
  DBHelper._();

  static final DBHelper getInstance = DBHelper._();

  static final String TABLE_NOTE = "NOTE";
  static final String COLUMN_NOTE = "S_NO";
  static final String COLUMN_TITLE = "TITLE";
  static final String COLUMN_DEC = "DEC";

  Database ? myDB;
  
  get rowsEffected => null;

  Future<Database> getDB() async{

    return myDB?? await openDB();

    // if(myDB != null){
    //   return myDB!;
    // }
    // else{
    //   myDB = await openDB();
    //   return myDB!;
    // }
  }

  Future<Database> openDB() async{
     Directory  appdir = await getApplicationCacheDirectory();

     String dbPath = join(appdir.path, "NoteBMI.db");

     return await openDatabase(dbPath, onCreate: (db, version){

      db.execute("create table $TABLE_NOTE ($COLUMN_NOTE integer primary key autoincrement, $COLUMN_TITLE text, $COLUMN_DEC text ) ");

     }, version: 1);
  }

  //insertion
  Future<bool> addNote({required String mTitle, required String mDesc}) async{
    var db = await getDB();

    await db.insert(TABLE_NOTE, {
      COLUMN_TITLE: mTitle,
      COLUMN_DEC: mDesc
    });

    return rowsEffected>0;
  }
  //reading date
  Future<List<Map<String, dynamic>>> getAllNotes()async{
    var db = await getDB();
    List<Map<String, dynamic>> mData = await db.query(TABLE_NOTE);
    return mData;
  }


}