import 'package:flutter/material.dart';
import 'package:treinando/dao/transactions.dart';
import 'package:treinando/model/card_model.dart';

class CoinsCard extends StatelessWidget {
  final CardModel cardModel;
  final Transactions transactions;
  const CoinsCard(this.transactions,  this.cardModel);

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