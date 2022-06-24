import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:pares_bio_avanc/components/topo_app.dart';
import 'package:pares_bio_avanc/screens/pages/home/menu_lateral.dart';

class Bacterias extends StatefulWidget {
  const Bacterias({Key? key}) : super(key: key);

  @override
  State<Bacterias> createState() => _BacteriasState();
}

class _BacteriasState extends State<Bacterias> {
  List<String> data = [
    "Vanderlei",
    "Tatiane",
    "Nicolas",
    "Nicole",
    "Zumira",
    "José",
  ];

  Future searchData(String param) async {
    List<String> result =
        data.where((element) => element.contains(param)).toList();
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuLateral(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TopoApp(),
            TypeAheadField<String>(
              textFieldConfiguration: TextFieldConfiguration(
                autofocus: true,
                style: DefaultTextStyle.of(context).style.copyWith(
                      fontStyle: FontStyle.normal,
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Colors.black54,
                      textBaseline: TextBaseline.ideographic,
                    ),
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              suggestionsCallback: (pattern) async {
                return await searchData(pattern);
                // return await BackendService.getSuggestions(pattern);
              },
              itemBuilder: (context, suggestion) {
                return ListTile(
                  leading: const Icon(Icons.shopping_cart),
                  // title: Text(suggestion['name']),
                  title: Text(suggestion),
                  subtitle: Text(suggestion),
                );
              },
              onSuggestionSelected: (suggestion) {
                print(suggestion);
              },
            )
          ],
        ),
      ),
    );
  }
}
