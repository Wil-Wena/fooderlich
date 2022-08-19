import 'package:flutter/material.dart';
import 'package:fooderlich/comp/chip.dart';
import 'package:fooderlich/fooderlih_theme.dart';

class card3 extends StatelessWidget {
  const card3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(width: 350, height: 450),
        decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.6),
            image: const DecorationImage(
                image: const AssetImage('assests/theme.png'),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(10)),
        child: Stack(children: [
          Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(
                  Icons.book,
                  color: Colors.white,
                  size: 35,
                ),
                const SizedBox(height: 10),
                Text(
                  'Book Trends',
                  style: FooderlichTheme.darkTextTheme.headline2,
                ),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: Column(
                    children: [
                      Wrap(
                        alignment: WrapAlignment.start,
                        spacing: 10,
                        children: [
                          chipComponent(txt: 'Romance'),
                          chipComponent(txt: 'Drama'),
                          chipComponent(txt: 'Soap'),
                          chipComponent(txt: 'Adventure'),
                          chipComponent(txt: 'Crime')
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
