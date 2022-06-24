import 'package:flutter/material.dart';
import 'package:pares_bio_avanc/screens/home/home_screen.dart';
import 'package:pares_bio_avanc/screens/login/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Authenticate extends StatefulWidget {
  const Authenticate({Key? key}) : super(key: key);

  @override
  State<Authenticate> createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  @override
  void initState() {
    super.initState();
    verifyToken().then((value) {
      if (value) {
        print("passou pelo authenticate");
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          ),
        );
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const LoginScreen(),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  Future<bool> verifyToken() async {
    SharedPreferences sheredPreference = await SharedPreferences.getInstance();
    if (sheredPreference.getString('token') != null) {
      return true;
    } else {
      return false;
    }
  }
}
