import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  CircleImage({Key? key, this.imageRadius = 20, this.imageProvider})
      : super(key: key);
  double imageRadius;
  final ImageProvider? imageProvider;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.transparent,
      radius: imageRadius,
      child: CircleAvatar(
        radius: imageRadius - 5,
        backgroundImage: imageProvider,
      ),
    );
  }
}
