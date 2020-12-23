import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:campaneo_app/widgets/status_widget.dart';
import 'package:campaneo_app/widgets/campaign_info_dialog.dart';

/// This widget acts as a tile button for the homepage screen. Where other
/// widgets can be displayed in.

class CampaignTile extends StatelessWidget {

  final String title;
  AssetImage image;
  Status status;

  CampaignTile(this.title);

  //TODO: add ontap-function, all tiles have a different screen to navigate to

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Ink(
        decoration: BoxDecoration(
          color: HexColor("#3C3C3C"),
          border: Border.all(color: HexColor("#C4C4C4"), width: 1),
          image: DecorationImage(
            image: AssetImage('assets/images/campaign-back.png'),
            fit: BoxFit.cover
          ),
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
                child: Text(this.title, style: TextStyle(color: Colors.white, fontSize: 25)),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 10, bottom: 10),
                  child: StatusWidget(Status.New),
                ),
              ),
            ],
          ),
          onTap: () => { showCampaignInfo(context) },
        ),
      ),
    );
  }

  showCampaignInfo(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) => CampaignInfoDialog(
            "BUNDESPROGRAMM WIEDERVERNETZUNG",
            "Abernathy, Dicki and Runolfsson",
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
            "1-603-696-9919x798",
            "Adolfo Way 33594, East Jayda. Micronesia",
            "Lennie.Hammes83@yahoo.com")
    );
  }
}