import 'package:flutter/cupertino.dart';
import 'package:fooderlich/fooderlih_theme.dart';

class Card1 extends StatelessWidget {
  const Card1({Key? key}) : super(key: key);
  final String category = 'Editor\'s Choice';
  final String title = 'The Cake Piece';
  final String description = 'You\'ve got to taste it';
  final String chef = 'Wilson Aballey';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(30),
        constraints: const BoxConstraints.expand(width: 350, height: 450),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image: const DecorationImage(
                image: const AssetImage('assests/img1.jpg'),
                fit: BoxFit.cover)),
        child: Stack(children: [
          Text(
            category,
            style: FooderlichTheme.darkTextTheme.headline4,
          ),
          Positioned(
            top: 15,
            child: Text(
              title,
              style: FooderlichTheme.darkTextTheme.headline1,
            ),
          ),
          Positioned(
            bottom: 15,
            right: 0,
            child: Text(
              description,
              style: FooderlichTheme.darkTextTheme.displayMedium,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Text(
              chef,
              style: FooderlichTheme.darkTextTheme.bodyText1,
            ),
          ),
        ]),
      ),
    );
  }
}
