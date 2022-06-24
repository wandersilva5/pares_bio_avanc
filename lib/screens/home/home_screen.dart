import 'package:flutter/material.dart';
import 'package:pares_bio_avanc/screens/home/body_home.dart';
import 'package:pares_bio_avanc/screens/home/menu_lateral.dart';
import 'package:pares_bio_avanc/services/constants.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        // appBar: AppBar(
        //   elevation: 0,
        //   flexibleSpace: Container(
        //     decoration: const BoxDecoration(
        //       gradient: LinearGradient(
        //         begin: Alignment.bottomRight,
        //         end: Alignment.topLeft,
        //         colors: kGradienteCollor,
        //       ),
        //     ),
        //   ),
        // ),
        drawer: MenuLateral(),
        body: const BodyHome(),
        // backgroundColor: kPrimaryColor,
      ),
    );
  }
}
