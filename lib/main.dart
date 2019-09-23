import 'package:flutter/material.dart';

import 'package:intl/intl.dart';
import 'package:personal_budget/widgets/user_input.dart';
import './widgets/user_transaction.dart';
import './widgets/transiction_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {


//  String titleInput;
//  String amountInput;




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Personal Budget'),
      ),
      body: Container(
        height: 500,
        child: SingleChildScrollView(
          child: Column(
//        mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,

              children: <Widget>[
              Container(

                width: double.infinity,
                child: Card(
                  color: Colors.blue,
                  child: Text('Chart'),
                  elevation: 5,
                ),
              ),

               UserTransaction()



            ],),
        ),
      ),


    );
  }
}
