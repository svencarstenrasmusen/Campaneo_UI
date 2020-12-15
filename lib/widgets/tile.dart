import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

/// This widget acts as a tile button for the homepage screen. Where other
/// widgets can be displayed in.


class MenuTile extends StatelessWidget {

  final String title;
  final Widget widget;

  MenuTile(this.title, this.widget);

  //TODO: add ontap-function, all tiles have a different screen to navigate to

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.45,
      width: MediaQuery.of(context).size.width / 2,
      child: Ink(
        decoration: BoxDecoration(
          color: HexColor("#3C3C3C"),
          border: Border.all(color: HexColor("#C4C4C4"), width: 2),
        ),
        child: InkWell(
          child: Column(
            children: <Widget>[
              Container(height: 10),
              Text(this.title, style: TextStyle(color: Colors.white, fontSize: 40)),
              Spacer(flex: 2),
              this.widget,
              Spacer(flex: 4),
            ],
          ),
          onTap: () => { print('Tile tapped.') },
        ),
      ),
    );
  }

}