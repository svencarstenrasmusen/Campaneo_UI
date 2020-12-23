import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

/// This widget acts as a tile button for the homepage screen. Where other
/// widgets can be displayed in.

class CampaignInfoDialog extends StatelessWidget {

  final String campaigner;
  final String title;
  final String description;
  final String phoneNumber;
  final String address;
  final String email;

  CampaignInfoDialog(this.title, this.campaigner, this.description, this.phoneNumber, this.address, this.email);

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
          Text(this.title, style: TextStyle(fontSize: 40, color: Colors.white70)),
          Text(this.campaigner, style: TextStyle(fontSize: 20, color: Colors.white70)),
          Text(this.description, style: TextStyle(fontSize: 30, color: Colors.white70)),
          Text(this.address, style: TextStyle(fontSize: 20, color: Colors.white70)),
          Text(this.phoneNumber, style: TextStyle(fontSize: 20, color: Colors.white70)),
          Text(this.email, style: TextStyle(fontSize: 20, color: Colors.white70)),
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
            child: Text("CONTINUE", style: TextStyle(fontSize: 60)),
          ),
          onTap: () => { print("tapped decline.") },
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
          onTap: () => { print("tapped decline.") },
        ),
      ),
    );
  }

}