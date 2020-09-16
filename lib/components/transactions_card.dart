import 'package:flutter/material.dart';
import 'package:treinando/model/card_model.dart';

class CardTransactions extends StatelessWidget {
  final CardModel cardModel;
  const CardTransactions({this.cardModel});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Colors.white,
        child: InkWell(
          onTap: (){},
          child: ListTile(
            title: Text(cardModel.name),
            subtitle: Text(cardModel.subtitle),
          ),
        ),
      ),
      
    );
  }
}