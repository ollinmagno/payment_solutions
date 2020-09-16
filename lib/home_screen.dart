import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:treinando/components/transactions_card.dart';
import 'package:treinando/dao/transactions.dart';
import 'package:treinando/model/card_model.dart';
import 'package:treinando/utils/colors.dart';
import 'utils/colors.dart';

class HomeScreen extends StatelessWidget {
  final String _text = "Overview";

  @override
  Widget build(BuildContext context) {
    final Transactions _transactions = Provider.of(context);

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

    final _screenHeight =
        (screenSize.size.height - _appBar.preferredSize.height) -
            MediaQuery.of(context).padding.top;

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
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey.shade200,
          child: Padding(
            padding: const EdgeInsets.all(16),
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
                    Row(
                      children: <Widget>[
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
                  ],
                ),
                SizedBox(height: 12),
                Container(
                  height: 120,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, int index) => Row(
                      children: <Widget>[
                        Container(
                          height: 100,
                          child: RaisedButton(
                            onPressed: () {},
                            child: Text("Hello"),
                          ),
                        ),
                        SizedBox(width: 12),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 12),
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
                    Row(
                      children: <Widget>[
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
                  ],
                ),
                SizedBox(height: 12),
                Container(
                  height: 300,
                  child: ListView.builder(
                    itemCount: 20,
                    itemBuilder: (context, int index) => Row(
                      children: <Widget>[
                        SizedBox(
                          height: 90,
                        ),
                        Expanded(
                          child: CardTransactions(
                            _transactions,
                            CardModel(
                                subtitle: 'September 16, 2020',
                                negativeBalance: 'Card',
                                positiveBalance: 'Card'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
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
      ),
    );
  }
}
