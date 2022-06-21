import 'package:flutter/material.dart';
import 'package:pares_bio_avanc/screens/pages/login/login_screen.dart';
import 'package:pares_bio_avanc/services/constants.dart';

class WelcomeScreem extends StatefulWidget {
  const WelcomeScreem({Key? key}) : super(key: key);

  @override
  _WelcomeScreemState createState() => _WelcomeScreemState();
}

class _WelcomeScreemState extends State<WelcomeScreem> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const LoginScreen(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            color: kPrimaryColor,
          ),
          Column(
            children: <Widget>[
              Expanded(
                flex: 8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/nova_logo.png",
                      width: 220,
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "PARES BIOMAGNÉTICOS AVANÇADO",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: textColor1,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      LinearProgressIndicator(
                        color: kTreeColor,
                      ),
                      SizedBox(height: 30),
                      Text("Desenvolvido por Wander Silva",
                          style: TextStyle(color: textColor1))
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
