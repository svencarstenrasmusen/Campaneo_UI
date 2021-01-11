import 'dart:ui';
import 'package:campaneo_app/widgets/information_selection_dialog.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

/// This widget acts as a tile button for the homepage screen. Where other
/// widgets can be displayed in.

class InformationDetailDialog extends StatelessWidget {

  final String informationType;
  //final String informationCategory;
  final String description;
  final int points;

  InformationDetailDialog(this.informationType, this.description, this.points);

  //TODO: add ontap-function, all tiles have a different screen to navigate to

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: BeveledRectangleBorder(),
      child: dialogContent(context),
    );
  }

  Widget dialogContent(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.85,
      width: MediaQuery.of(context).size.width * 0.80,
      padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
      decoration: BoxDecoration(
        color: HexColor("#3C3C3C"),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(this.informationType, style: TextStyle(fontSize: 40, color: Colors.white70)),
          Text(this.description, style: TextStyle(fontSize: 25, color: Colors.white70)),
          Text("Reward: ${this.points}", style: TextStyle(fontSize: 40, color: Colors.white70)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              continueButton(context),
              declineButton(context)
            ],
          ),
        ],
      ),
    );
  }

  Widget continueButton(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.15,
      width: MediaQuery.of(context).size.width * 0.25,
      child: Material(
        color: Colors.green,
        child: InkWell(
          child: Center(
            child: Text("ACCEPT", style: TextStyle(fontSize: 60)),
          ),
          onTap: () => { Navigator.pop(context) },
        ),
      ),
    );
  }

  Widget declineButton(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.15,
      width: MediaQuery.of(context).size.width * 0.25,
      child: Material(
        color: Colors.red,
        child: InkWell(
          child: Center(
            child: Text("DECLINE", style: TextStyle(fontSize: 60)),
          ),
          onTap: () => { Navigator.pop(context) },
        ),
      ),
    );
  }



}