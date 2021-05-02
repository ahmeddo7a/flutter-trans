import 'package:flutter/material.dart';
import 'transction_list.dart';
import 'new_transaction.dart';
import 'transaction.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {

  final List<Transaction> _userTransaction = [
    Transaction(id:"t1",title: "New Shoes",amount: 16.99,date: DateTime.now(),),
    Transaction(id: "t2",title: "New Shirt",amount: 20.99,date: DateTime.now(),),
  ];

  void _addNewTransaction (String title , double amount){
    final newTx = Transaction(title: title , amount: amount,date: DateTime.now(),id: DateTime.now().toString());

    setState((){
      // TODO: implement setState
      _userTransaction.add(newTx);
    });
  }



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransaction),
      ],
    );
  }
}
