
import 'package:flutter/material.dart';
import 'package:treinando/components/transactions_card.dart';

class Transactions with ChangeNotifier {
  final List _transactions = List<CardTransactions>();

  //List<CardTransactions> get all => _transactions;
  
  int get count => _transactions.length;

  CardTransactions byIndex(int i) => _transactions.elementAt(i);

  void put(CardTransactions cardTransactions){
    if(cardTransactions == null){
      return;
    }
    _transactions.add(CardTransactions);

    notifyListeners();  
  }
}