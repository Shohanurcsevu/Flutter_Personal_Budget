
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:personal_budget/models/transaction.dart';


class TransactionList extends StatelessWidget{



final List<Transaction> transctions;
TransactionList(this.transctions);





  Widget build(BuildContext context)
  {
    return Column(children: transctions.map((tx){
      return Card(child:
      Row(children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 15,
          ),

          decoration: BoxDecoration(
              border: Border.all(color: Colors.purple,width: 2)
          ),
          padding: EdgeInsets.all(10),

          child:
          Text(
            '\$${tx.amount}',
            style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.purple

            ),
          ),),


        Column(
          crossAxisAlignment: CrossAxisAlignment.start,


          children: <Widget>[
            Text(tx.title,
              style: TextStyle(fontSize: 16,
                  fontWeight: FontWeight.bold),),


            Text( DateFormat.yMMMd().format(tx.dateTime),
              style: TextStyle(
                  color: Colors.grey
              ),)

          ],),




      ],)

      );
    }).toList(),);
  }
}