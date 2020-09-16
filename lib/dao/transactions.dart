import 'package:flutter/material.dart';
import 'package:treinando/components/transactions_card.dart';

class Transactions with ChangeNotifier {
  final List<CardTransactions> _transactions = List();

  int get count => _transactions.length;

  void put(CardTransactions cardTransactions){
    if(cardTransactions == null){
      return;
    }
    //_transactions.add(CardTransactions);

    notifyListeners();  
  }
}