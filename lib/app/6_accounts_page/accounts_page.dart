import 'package:flutter/material.dart';
import 'package:thesis_nestfinder/services/auth.dart';
import 'package:thesis_nestfinder/common_widgets/image_widget.dart';

class PageThree extends StatefulWidget {
  const PageThree({Key? key, required this.auth}) : super(key: key);
  final AuthBase auth;


  @override
  State<PageThree> createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {



  Future<void> _signOut() async {
    try {
      await widget.auth.signOut();
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.green,
            floating: false,
            pinned: true,
            title: const Text('Account'),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.settings),
              ),
              Container(
                color: Colors.green,
                width: 12,
              ),
            ],
          ),
          buildView(),
        ],
      ),
    );
  }

  Widget buildView() => SliverToBoxAdapter(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 22.0),
            child: Column(
              children: [
                Container(
                  width: 75,
                  height: 75,
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  ),
                  child: Transform.scale(scale: 1.5,child: Image.asset('images/whitelogo.png')),
                ),
                Center(
                  child: TextButton(
                      onPressed: _signOut, child: const Text('Logout')),
                ),
              ],
            ),
          ),
        ),
      );
}
