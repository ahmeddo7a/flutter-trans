import 'package:flutter/material.dart';
import 'package:flutter_trans/transaction.dart';
import 'package:intl/intl.dart';
import 'transaction.dart';


class TransactionList extends StatelessWidget {

  final List<Transaction> transactions;

  TransactionList(this.transactions);



  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactions.map((tx){
        return Row(
          children: [
            Container(
              child:
              Text('\$ ${tx.amount}',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.purple,
                    fontSize: 18),
              ),
              decoration: BoxDecoration(
                  border: Border.all(width: 2,color: Colors.purple)
              ),
              margin: EdgeInsets.symmetric(
                  vertical: 10 , horizontal: 10
              ),
              padding: EdgeInsets.all(8),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(tx.title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(DateFormat.yMMMd().add_jm().format(tx.date),
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            )
          ],
        );
      }).toList(),
    );
  }
}
