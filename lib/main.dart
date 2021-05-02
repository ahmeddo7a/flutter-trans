import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_trans/new_transaction.dart';
import 'package:flutter_trans/transaction.dart';
import 'package:flutter_trans/transction_list.dart';
import 'package:flutter_trans/user_transaction.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text("Flutter Transaction"),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            child: Card(
              child: Text("Chart !"),
              elevation: 2,
              color: Colors.blue,
            ),
          ),

          UserTransaction(),
        ],

      ),
    );
  }
}
