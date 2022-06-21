import 'package:flutter/material.dart';
import 'package:pares_bio_avanc/components/custom_shape.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pares_bio_avanc/services/constants.dart';

class TopoApp extends StatelessWidget {
  const TopoApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomShape(),
      child: Container(
        padding: const EdgeInsets.only(left: 15, top: 20, right: 20),
        height: 200,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: kGradienteCollor,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            GestureDetector(
              onTap: () => {Scaffold.of(context).openDrawer()},
              child: Align(
                alignment: Alignment.topLeft,
                child: SvgPicture.asset(
                  "assets/icon/icon-menu.svg",
                  color: Colors.white,
                  height: 30,
                  width: 30,
                ),
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  SvgPicture.asset(
                    "assets/images/logo-bio.svg",
                    width: 200,
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter,
                  ),
                  const Positioned(
                    top: 10,
                    left: 50,
                    child: Text(
                      "Pares Biomagnéticos \nCompletos",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
