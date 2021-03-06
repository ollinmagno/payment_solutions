import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:treinando/dao/transactions.dart';
import 'package:treinando/utils/colors.dart';
import 'home_screen.dart';

void main() => runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Transactions(),
        ),
      ],
      child: MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App treinamento',
      theme: ThemeData(
        primaryColor: ColorPalette.primaryColorPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
