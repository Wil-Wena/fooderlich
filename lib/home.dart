// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fooderlich/cards/Card1.dart';
import 'cards/Card2.dart';
import 'cards/card3.dart';

class MyWidget extends StatefulWidget {
  MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int _selectedIndex = 0;
  static List<Widget> pages = <Widget>[
    Card1(),
    card2(),
    card3(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
          'Fooderlich',
          style: Theme.of(context).textTheme.headline6,
        )),
        body: pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedItemColor:
              Theme.of(context).textSelectionTheme.selectionColor,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.card_giftcard), label: 'Card'),
            BottomNavigationBarItem(
                icon: Icon(Icons.card_giftcard), label: 'Card 2'),
            BottomNavigationBarItem(
                icon: Icon(Icons.card_giftcard), label: 'Card 3'),
          ],
        ));
  }
}
