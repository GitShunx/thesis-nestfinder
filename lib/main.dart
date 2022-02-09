import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:thesis_nestfinder/app/1_landing_page/landing_page.dart';
import 'package:thesis_nestfinder/services/auth.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NESTFINDER',
      home: LandingPage(
        auth: Auth(),
      ),
    );
    }
}
