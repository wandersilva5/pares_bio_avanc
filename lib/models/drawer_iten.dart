import 'package:flutter/material.dart';

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
