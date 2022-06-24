import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pares_bio_avanc/services/constants.dart';

class CardCuston extends StatelessWidget {
  String text;
  String image;
  Widget page;

  CardCuston({
    Key? key,
    required this.text,
    required this.image,
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
          borderRadius: BorderRadius.circular(5),
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: const TextStyle(
                fontSize: 15,
                color: textColor2,
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: SvgPicture.asset(
                image,
                height: 70,
                width: 70,
              ),
            )
          ],
        ),
      ),
    );
  }
}
