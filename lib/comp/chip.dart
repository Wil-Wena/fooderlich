import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fooderlich/fooderlih_theme.dart';

class chipComponent extends StatelessWidget {
  chipComponent({Key? key, required this.txt}) : super(key: key);
  final String txt;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Chip(
        label: Text(txt, style: FooderlichTheme.darkTextTheme.bodyText1),
        backgroundColor: Colors.black.withOpacity(0.7),
        onDeleted: () {
          const snackBar = SnackBar(
            content: Text('Deleted'),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
      ),
    );
  }
}
