import 'package:flutter/material.dart';
import 'package:treinando/components/transactions_card.dart';
import 'package:treinando/utils/colors.dart';

import 'utils/colors.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List _coins = List();
  List _transactions = List<Card>();
  @override
  void initState() {
    super.initState();
    //_coins.add("");
  }

  final String _text = "Overview";
  @override
  Widget build(BuildContext context) {
    final _appBar = AppBar(
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.dehaze,
              color: ColorPalette.primaryColorPurple,
              size: 28,
            ),
          ),
          Text(
            _text,
            style: TextStyle(color: ColorPalette.primaryColorPurple),
          ),
          GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.notifications_none,
              color: ColorPalette.primaryColorPurple,
              size: 28,
            ),
          ),
        ],
      ),
      backgroundColor: Colors.orange,
      iconTheme: IconThemeData(color: ColorPalette.primaryColorPurple),
    );
    MediaQueryData screenSize = MediaQuery.of(context);
    
    final _screenHeight = (screenSize.size.height - _appBar.preferredSize.height)
    - MediaQuery.of(context).padding.top;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(78),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 107,
              child: _appBar,
            ),
          ],
        ),
      ),
      body: Container(
        color: Colors.grey.shade200,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text(
                    "Currency Accounts",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF3f3a8a)),
                  ),
                  const Text(
                    "Manage",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                  Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.grey,
                  ),
                ],
              ),

              // ListView.builder(
              //   itemCount: _coins.length,
              //   itemBuilder: (context, int index) {
              //     //return CardTransactions();
              //   },
              // ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text(
                    "Recent Transactions",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF3f3a8a)),
                  ),
                  const Text(
                    "View all",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                  Icon(Icons.keyboard_arrow_right, color: Colors.grey),
                ],
              ),
              // ListView.builder(
              //   itemCount: _transactions.length,
              //   itemBuilder: (context, int index) {},
              // ),
              Container(
                  height: 80,
                  decoration: BoxDecoration(
                    color: ColorPalette.primaryColorPurple,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: ListTile(
                      title: const Text(
                        "Pay Out",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
