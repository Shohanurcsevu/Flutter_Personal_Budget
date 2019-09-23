import 'package:flutter/material.dart';
import 'package:personal_budget/models/transaction.dart';
import 'package:personal_budget/widgets/transiction_list.dart';
import 'package:personal_budget/widgets/user_input.dart';

class UserTransaction extends StatefulWidget{


  @override
  UserTransactionState createState()=>UserTransactionState();


}

class UserTransactionState extends State<UserTransaction> {

  final List<Transaction>_usertransation=[
    Transaction(
        id: 't1',
        title: 'New Shoes',
        amount: 69.66,
        dateTime: DateTime.now()),
    Transaction(
        id: 't2',
        title: 'Weekly Groceries',
        amount: 125.66,
        dateTime: DateTime.now())



  ];

  void _addNewTransaction(String txtitle,double txamount)
  {
     final newTX=Transaction(title: txtitle,amount: txamount,dateTime: DateTime.now(),
     id: DateTime.now().toString()
    );
     setState(() {
       _usertransation.add(newTX);
     });
  }


  @override
  Widget build(BuildContext context) {
    return Column (
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        TransactionList(_usertransation)
      ],

    );

  }
}