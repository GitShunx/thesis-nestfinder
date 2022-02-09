import 'package:flutter/material.dart';
import 'package:thesis_nestfinder/app/4_marketplace/marketplace.dart';
import 'package:thesis_nestfinder/app/6_accounts_page/accounts_page.dart';
import 'package:thesis_nestfinder/app/5_business_page/business_page.dart';
import 'package:thesis_nestfinder/services/auth.dart';

class RoutePage extends StatefulWidget {
  const RoutePage({
    Key? key,
    required this.auth,
  }) : super(key: key);
  final AuthBase auth;

  @override
  State<RoutePage> createState() => _HomePageState();
}

class _HomePageState extends State<RoutePage> {
  int _selectedIndex = 1;

  final _pageOptions = [
    const PageOne(),
    const PageTwo(),
    PageThree(auth: Auth()),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // Future<void> _signOut() async {
  //   try {
  //     await widget.auth.signOut();
  //   } catch (e) {
  //     print(e.toString());
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _pageOptions[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 30),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.view_list_rounded, size: 30),
            label: 'Busines',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle, size: 30),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
