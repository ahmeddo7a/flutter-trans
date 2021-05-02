import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;

  final titleInput = TextEditingController();
  final amountInput = TextEditingController();

  NewTransaction(this.addTx);


  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          TextField(
            decoration: InputDecoration(labelText: 'Title'),
            controller: titleInput,
          ),

          TextField(
            decoration: InputDecoration(labelText: 'Amount'),
            controller: amountInput,
          ),
          FlatButton(
            child:Text("Add Transaction",
              style: TextStyle(color: Colors.purple),
            ),
            onPressed: (){
                addTx(titleInput.text,double.parse(amountInput.text));
            },
          ),
        ],
      ),
    );
  }
}
