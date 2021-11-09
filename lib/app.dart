import 'package:complexui/configration.dart';
import 'package:complexui/widgets/card_section.dart';
import 'package:complexui/widgets/expences.dart';
import 'package:complexui/widgets/header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: primaryColor,
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              height: 120,
              child: WalletHeader(),
            ),
            Expanded(child: CardSection()),
            Expanded(child: ExpencesSection()),
          ],
        ),
      ),
    );
  }
}
