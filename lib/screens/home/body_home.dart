import 'package:flutter/material.dart';
import 'package:pares_bio_avanc/components/topo_app.dart';
import 'package:pares_bio_avanc/screens/pages/bacterias.dart';
import 'package:pares_bio_avanc/screens/pages/dicionario.dart';
import 'package:pares_bio_avanc/screens/pages/fungos.dart';
import 'package:pares_bio_avanc/screens/home/card_custon.dart';
import 'package:pares_bio_avanc/screens/pages/parasitas.dart';
import 'package:pares_bio_avanc/screens/pages/programas.dart';
import 'package:pares_bio_avanc/screens/pages/rastreio.dart';
import 'package:pares_bio_avanc/screens/pages/simbiose.dart';
import 'package:pares_bio_avanc/screens/pages/virus.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({Key? key}) : super(key: key);

  get children => null;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const TopoApp(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CardCuston(
                    text: "Dicionário",
                    image: "assets/images/dicionario.svg",
                    page: const Dicionario()),
                CardCuston(
                    text: "Programas Rápidos",
                    image: "assets/images/rapido.svg",
                    page: const Programas()),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CardCuston(
                    text: "Rastreio Rápido",
                    image: "assets/images/rapido.svg",
                    page: const Rastreio()),
                CardCuston(
                    text: "Vírus",
                    image: "assets/images/virus.svg",
                    page: const Virus()),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CardCuston(
                    text: "Bactérias",
                    image: "assets/images/bacteria.svg",
                    page: const Bacterias()),
                CardCuston(
                    text: "Fungos",
                    image: "assets/images/fungo.svg",
                    page: const Fungos()),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CardCuston(
                    text: "Parasitas",
                    image: "assets/images/parasitas.svg",
                    page: const Parasitas()),
                CardCuston(
                    text: "Simbiose",
                    image: "assets/images/simbiose.svg",
                    page: const Simbiose()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
