import './transaction.dart';
import 'package:flutter/material.dart';

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
  final List<Transaction> transactions = [
    Transaction(
      id: 't1',
      amount: 255.00,
      title: 'new shoes',
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      amount: 25.00,
      title: 'weekly groceries',
      date: DateTime.now(),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        children: <Widget>[
          Card(
            color: Colors.blue[200],
            child: Container(
              child: Text('CHART'),
              width: 100,
            ),
            elevation: 5,
          ),
          Container(
            child: Card(
              color: Colors.red[300],
              child: Container(
                child: Text('LIST of tx'),
                width: double.infinity,
              ),
            ),
          )
        ],
      ),
    );
  }
}
