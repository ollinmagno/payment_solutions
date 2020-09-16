import 'package:flutter/material.dart';

class CardModel {
  final String name;
  final String subtitle;
  final String negativeBalance;
  final String positiveBalance;

  const CardModel({
  this.name = 'Conversion',
  @required this.subtitle,
  @required this.negativeBalance,
  @required this.positiveBalance});
}
