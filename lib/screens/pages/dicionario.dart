import 'package:flutter/material.dart';
import 'package:pares_bio_avanc/components/topo_app.dart';
import 'package:pares_bio_avanc/models/api_pares_biomag.dart';
import 'package:pares_bio_avanc/repository/http_service.dart';
import 'package:pares_bio_avanc/screens/pages/home/menu_lateral.dart';

class Dicionario extends StatefulWidget {
  const Dicionario({Key? key}) : super(key: key);

  @override
  State<Dicionario> createState() => _DicionarioState();
}

class _DicionarioState extends State<Dicionario> {
  final HttpService httpService = HttpService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuLateral(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TopoApp(),
            Autocomplete<ParesBiomag>(
              optionsBuilder: (TextEditingValue value) {
                return httpService.data!.where((element) =>
                    element.parBiomagnetico.toLowerCase().contrains)(
                  value.text.toLowerCase(),
                );
              },
              displayStringForOption: (ParesBiomag d) => '${d.parBiomagnetico}',
            ),
          ],
        ),
      ),
    );
  }
}
