import 'package:flutter/material.dart';

class ImageRandomWidget extends StatelessWidget {
  const ImageRandomWidget({Key? key, required this.index,}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) => SizedBox(
        height: 150,
        width: double.infinity,
        child: Card(
          child: Image.network(
            'https://source.unsplash.com/random?sig=$index',
            fit: BoxFit.cover,
          ),
        ),
      );
}
