import 'package:flutter/material.dart';
import 'package:treinando/model/card_model.dart';

class CoinsDAO with ChangeNotifier {
  final Map<String, CardModel> _coins = Map();

  int get count => _coins.length;

  List<CardModel> get all => [... _coins.values];
  
  CardModel byIndex(int i) => _coins.values.elementAt(i);

  void put(){

    notifyListeners();
  }

  void remove(){

    notifyListeners();
  }
}