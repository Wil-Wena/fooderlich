import 'package:flutter/cupertino.dart';
import 'package:fooderlich/comp/authorcard.dart';
import 'package:fooderlich/fooderlih_theme.dart';

class card2 extends StatelessWidget {
  const card2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(width: 350, height: 450),
        decoration: BoxDecoration(
            image: const DecorationImage(
                image: const AssetImage('assests/smoothie.jpg'),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            AuthorCard(
              authorName: 'Aballey Wilson',
              title: 'My Life Story',
              imageProvider: AssetImage('assests/bk.jpg'),
            ),
            Expanded(
                child: Stack(
              children: [
                Positioned(
                    bottom: 15,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Text(
                        "Interesting Book",
                        style: FooderlichTheme.lightTextTheme.headline2,
                      ),
                    )),
                Positioned(
                    bottom: 16,
                    left: 16,
                    child: RotatedBox(
                        quarterTurns: 3,
                        child: Text(
                          'Wil Life story',
                          style: FooderlichTheme.lightTextTheme.headline1,
                        )))
              ],
            ))
          ],
        ),
      ),
    );
  }
}
