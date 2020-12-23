import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:campaneo_app/widgets/status_widget.dart';
import 'package:campaneo_app/widgets/campaign_info_dialog.dart';

/// This widget acts as a tile button for the homepage screen. Where other
/// widgets can be displayed in.

class InformationTile extends StatelessWidget {

  final Icon icon;
  final int points;

  InformationTile(this.icon, this.points);

  //TODO: add ontap-function, all tiles have a different screen to navigate to

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: HexColor("#3C3C3C"), width: 5),
      ),
      child: Material(
        color: HexColor("#C4C4C4"),
        child: InkWell(
          splashColor: Colors.white70,
          child: Container(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.speed, size: 250, color: HexColor("#3C3C3C")),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("${this.points} PTS", style: TextStyle(fontSize: 40, color: HexColor("#3C3C3C"))),
                    Icon(Icons.info, size: 50, color: HexColor("#3C3C3C"))
                  ],
                )
              ],
            ),
          ),
          onTap: () => { print("information tile tapped.") },
        ),
      ),
    );
  }
}