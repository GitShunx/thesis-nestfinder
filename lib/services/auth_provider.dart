import 'package:flutter/material.dart';
import 'package:thesis_nestfinder/services/auth.dart';

class AuthProvider extends InheritedWidget {
  const AuthProvider({Key? key, required Widget child, required this.auth, }) : super(key: key, child: child);
  final AuthBase auth;

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;
}