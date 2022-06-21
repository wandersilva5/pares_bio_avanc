// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:pares_bio_avanc/services/constants.dart';

class CardCuston extends StatelessWidget {
  String text;
  // Icon icon;
  Widget page;

  CardCuston({
    Key? key,
    required this.text,
    // required this.icon,
    required this.page,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => page,
          ),
        ),
      },
      child: Container(
        width: 150,
        height: 100,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0.5, 0.5),
              blurRadius: 5.0,
              spreadRadius: 0.1,
            ),
          ],
        ),
        child: Column(
          children: [
            Text(
              text,
              style: const TextStyle(
                fontSize: 15,
                color: textColor2,
              ),
            ),
            Container(
              child: const Icon(
                Icons.access_alarm,
                size: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
