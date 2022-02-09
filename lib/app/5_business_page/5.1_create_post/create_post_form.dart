import 'package:flutter/material.dart';

class CreatePostForm extends StatelessWidget {
  CreatePostForm({Key? key}) : super(key: key);

  final _category = [
    "For Rent",
    "For Sale",
  ];

  List<Widget> _buildChildren(context) {
    return const [
      TextField(
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          labelText: 'Title',
          hintText: 'Room for rent',
          //pop-ups mobile keyboard
        ),
      ),
      TextField(
        decoration: InputDecoration(
          labelText: 'Price',
          //pops-up mobile number-only keyboard
        ),
      ),
      TextField(
        decoration: InputDecoration(
          labelText: 'Email',
          hintText: 'test@gmail.com',
        ),
      ),
    ];
  }

  //   void dispose () {
  //   focusNode.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: _buildChildren(context),
      ),
    );
  }
}
