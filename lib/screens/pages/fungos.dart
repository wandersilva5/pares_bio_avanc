import 'package:flutter/material.dart';
import 'package:pares_bio_avanc/components/topo_app.dart';
import 'package:pares_bio_avanc/screens/pages/home/menu_lateral.dart';

class Fungos extends StatelessWidget {
  const Fungos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuLateral(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TopoApp(),
          ],
        ),
      ),
    );
  }
}
