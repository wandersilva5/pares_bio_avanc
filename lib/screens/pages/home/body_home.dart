import 'package:flutter/material.dart';
import 'package:pares_bio_avanc/components/topo_app.dart';
import 'package:pares_bio_avanc/screens/pages/home/card_custon.dart';
import 'package:pares_bio_avanc/screens/pages/pagina_url.dart';

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
                CardCuston(text: "Dicionário", page: const PaginaUrl()),
                CardCuston(text: "Programas Rápidos", page: const PaginaUrl()),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CardCuston(text: "Rastrio Rapidos", page: const PaginaUrl()),
                CardCuston(text: "Virús", page: const PaginaUrl()),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CardCuston(text: "Bactérias", page: const PaginaUrl()),
                CardCuston(text: "Fungos", page: const PaginaUrl()),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CardCuston(text: "Parasitas", page: const PaginaUrl()),
                CardCuston(text: "Simbiose", page: const PaginaUrl()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
