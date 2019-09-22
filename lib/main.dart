import 'package:flutter/material.dart';
import 'models/transaction.dart';
import 'package:intl/intl.dart';

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
  final List<Transaction> transaction=[
    Transaction(
        id: 't1',
        title: 'New Shoes',
        amount: 69.66,
        dateTime: DateTime.now()),
    Transaction(
        id: 't2',
        title: 'Weekly Groceries',
        amount: 125.66,
        dateTime: DateTime.now()),



  ];

//  String titleInput;
//  String amountInput;
  final titleCOntroller=TextEditingController();
  final amountController=TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Personal Budget'),
      ),
      body: Column(
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

          Card(
            elevation: 5,
            
            child: Container(
              
              padding: EdgeInsets.all(10),
              
              
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[

                TextField(decoration: InputDecoration(
                  labelText: 'Title'
                ),

               controller: titleCOntroller,


//                onChanged: (value){
//                  titleInput=value;
//                },
                ),
                TextField(decoration: InputDecoration(
                  labelText: 'Amount'
                ),
                controller: amountController,

//                onChanged: (val){
//                  amountInput=val;
//                },
                ),

                FlatButton(child: Text(
                  'Add Transaction',
                ),
                textColor: Colors.purple,
                onPressed: (){


                   print(titleCOntroller.text);
                   print (amountController.text);



                },)

              ],
          ),
            ),),


       Column(children: transaction.map((tx){
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
       }).toList(),)

      ],),

    );
  }
}
