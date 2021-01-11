import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:campaneo_app/widgets/status_widget.dart';
import 'package:campaneo_app/widgets/campaign_info_dialog.dart';

/// This widget acts as a tile button for the homepage screen. Where other
/// widgets can be displayed in.

class RewardTile extends StatelessWidget {

  final int points;
  final int reductionPercentage;

  RewardTile(this.points, this.reductionPercentage);

  //TODO: add ontap-function, all tiles have a different screen to navigate to

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Ink(
        decoration: BoxDecoration(
          color: HexColor("#3C3C3C"),
          border: Border.all(color: HexColor("#C4C4C4"), width: 1),
        ),
        child: InkWell(
          child: Stack(
            children: <Widget>[
              Center(
                child: Opacity(
                  opacity: 0.5,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.15,
                    width: double.maxFinite,
                    color: Colors.grey,
                  ),
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("-${this.reductionPercentage}%", style: TextStyle(color: Colors.white, fontSize: 75)),
                    Icon(Icons.local_gas_station, size: 100)
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 10, bottom: 10),
                  child: Text("${this.points} PTS", style: TextStyle(color: Colors.white, fontSize: 30)),
                ),
              ),
            ],
          ),
          onTap: () => { print("reward tile pressed") },
        ),
      ),
    );
  }
}