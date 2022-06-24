import 'package:flutter/material.dart';
import 'package:pares_bio_avanc/services/authenticate.dart';
import 'package:pares_bio_avanc/services/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
            builder: (context) => const Authenticate(),
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
            children: [
              Expanded(
                flex: 8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 250,
                      width: 250,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.black26,
                          width: 5.0,
                          style: BorderStyle.solid,
                        ),
                      ),
                      child: SvgPicture.asset(
                        "assets/images/logo-bio.svg",
                        width: 220,
                        fit: BoxFit.fitWidth,
                        alignment: Alignment.topCenter,
                      ),
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
