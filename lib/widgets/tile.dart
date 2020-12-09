import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class MenuTile extends StatelessWidget {

  final String title;

  MenuTile(@required this.title);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: MediaQuery.of(context).size.height / 2,
        width: MediaQuery.of(context).size.width / 2,
        decoration: BoxDecoration(
          color: HexColor("#3C3C3C"),
          border: Border.all(color: HexColor("#C4C4C4"), width: 2),
        ),
        child: Column(
          children: <Widget>[
            Container(height: 10),
            Text(this.title, style: TextStyle(color: Colors.white, fontSize: 40))
          ],
        ),
      ),
      onTap: () {
        print('Tile tapped.');
      },
    );
  }

}