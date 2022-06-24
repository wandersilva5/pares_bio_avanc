import 'package:flutter/material.dart';
import 'package:pares_bio_avanc/models/list_drawer.dart';
import 'package:pares_bio_avanc/services/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class MenuLateral extends StatelessWidget {
  List categories = ListaMenu.getDrawerItem();
  MenuLateral({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: kPrimaryColor,
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  alignment: Alignment.center,
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: Colors.black26,
                        width: 5.0,
                        style: BorderStyle.solid),
                  ),
                  child: SvgPicture.asset(
                    "assets/images/logo-bio.svg",
                    width: 120,
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter,
                  ),
                ),
                const Divider(
                  color: Colors.white,
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: categories.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: categories[index].icon,
                    title: categories[index].text,
                    hoverColor: kTreeColor,
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => categories[index].destination,
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            const Divider(
              color: Colors.white,
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 20),
              child: const Text(
                'Versão 1.0.0 - Desenvolvido por Wnder Silva',
                style: TextStyle(color: textColor1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
