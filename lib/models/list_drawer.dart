import 'package:flutter/material.dart';
import 'package:pares_bio_avanc/screens/home/home_screen.dart';
import 'package:pares_bio_avanc/services/constants.dart';

class ListaMenu {
  static List<DrawerItem> getDrawerItem() {
    return [
      DrawerItem(
        id: 1,
        text: const TextCuston(text: "Início do App"),
        destination: const HomeScreen(),
        icon: const Icon(
          Icons.push_pin_sharp,
          size: 25,
          color: textColor1,
        ),
      ),
      DrawerItem(
        id: 2,
        text: const TextCuston(text: "Sobre o App"),
        destination: const HomeScreen(),
        icon: const Icon(
          Icons.menu_book_sharp,
          size: 35,
          color: textColor1,
        ),
      ),
      // DrawerItem(
      //   id: 3,
      //   text: const TextCuston(text: "Referências"),
      //   destination: const Referencias(),
      //   icon: const Icon(
      //     Icons.file_open,
      //     size: 35,
      //     color: textColor1,
      //   ),
      //   progItens: [],
      // ),
      // DrawerItem(
      //   id: 4,
      //   text: const TextCuston(text: "Sugestão"),
      //   destination: const Sugestion(),
      //   icon: const Icon(
      //     Icons.email,
      //     size: 35,
      //     color: textColor1,
      //   ),
      //   progItens: [],
      // ),
    ];
  }
}

class TextCuston extends StatelessWidget {
  final String text;
  const TextCuston({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 18,
        color: textColor1,
      ),
    );
  }
}

class DrawerItem {
  final int id;
  final Widget text;
  final Widget destination;
  final Icon icon;
  List<DrawerItem>? progItens;

  DrawerItem({
    required this.id,
    required this.text,
    required this.destination,
    required this.icon,
    this.progItens,
  });
}
