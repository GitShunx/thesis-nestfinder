import 'package:flutter/material.dart';
import 'package:thesis_nestfinder/app/2_sign_in/sign_in_button.dart';
import 'package:thesis_nestfinder/common_widgets/custom_elevated_button.dart';
import 'package:thesis_nestfinder/services/auth.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key, required this.auth}) : super(key: key);
  final AuthBase auth;

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  Future<void> _signInAnonymously() async {
    try {
      await widget.auth.signInAnonymously();
    } catch (e) {
      print(e.toString());
    }
  }

  Future<void> _signInWithGoogle() async {
    try {
      await widget.auth.signInWithGoogle();
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildContent(),
    );
  }

  Widget _buildContent() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter, colors: [
            Colors.green.shade50,
            Colors.green,
        ],
        ),
      ),
      padding: const EdgeInsets.all(32.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 100, width: 100,child: Image.asset('images/thelogo.png', fit: BoxFit.fill,)),
            ],
          ),
          const SizedBox(
            height: 50.0,
          ),
          const Center(
            child: Text(
              'SIGN IN',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28.0,
              ),
            ),
          ),
          const SizedBox(
            height: 22.0,
          ),
          CustomElevatedButton(
            height: 50.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.asset('images/google-logo.png'),
                const Text(
                  'Sign in with Google',
                  style: TextStyle(color: Colors.black, fontSize: 16.0),
                ),
                Opacity(
                  opacity: 0.0,
                  child: Image.asset('images/google-logo.png'),
                ),
              ],
            ),
            color: Colors.white,
            borderColor: Colors.grey,
            onPressed: _signInWithGoogle,
          ),
          const SizedBox(
            height: 12.0,
          ),
          SignInButton(

            height: 50.0,
            text: 'Go Anonymous',
            color: Colors.lime,
            textColor: Colors.black,
            borderColor: Colors.grey   ,
            onPressed: _signInAnonymously,
          ),
        ],
      ),
    );
  }
}
