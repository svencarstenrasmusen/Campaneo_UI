import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:campaneo_app/widgets/information_detail_dialog.dart';


/// This widget acts as a tile button for the homepage screen. Where other
/// widgets can be displayed in.

class InformationTile extends StatelessWidget {

  final Icon icon;
  final int points;
  Color color = HexColor("#C4C4C4");
  bool accepted = false;

  InformationTile(this.icon, this.points);

  //TODO: add ontap-function, all tiles have a different screen to navigate to

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: HexColor("#3C3C3C"), width: 5),
      ),
      child: Material(
        color: accepted? Colors.green : HexColor("#C4C4C4"),
        child: InkWell(
          splashColor: Colors.white70,
          child: Container(
            padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.speed, size: width / 6, color: HexColor("#3C3C3C")),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("${this.points} PTS", style: TextStyle(fontSize: height / 15, color: HexColor("#3C3C3C"))),
                    IconButton(
                        icon: Icon(Icons.info, size: height / 15, color: HexColor("#3C3C3C")),
                        padding: EdgeInsets.all(0),
                        onPressed: () => {showCampaignInfo(context)})
                  ],
                ),
              ],
            ),
          ),
          onTap: () {
            this.accepted = !this.accepted;
            (context as Element).markNeedsBuild();
          },
        ),
      ),
    );
  }

  showCampaignInfo(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) => InformationDetailDialog(
            "Wheel Speed Sensor",
            "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
            3)
    );
  }
}