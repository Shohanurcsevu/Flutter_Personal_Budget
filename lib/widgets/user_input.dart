import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget{
  final titleCOntroller=TextEditingController();
  final amountController=TextEditingController();

  final Function addTx;

  NewTransaction(this.addTx);


  @override
  Widget build(BuildContext context) {
    return Card(
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


                addTx(titleCOntroller.text, double.parse(amountController.text.toString()));


              },)

          ],
        ),
      ),
    );
  }
}