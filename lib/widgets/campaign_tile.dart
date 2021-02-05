import 'dart:ui';

import 'package:campaneo_app/widgets/queryable_campaign_details.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:campaneo_app/widgets/status_widget.dart';
import 'package:campaneo_app/widgets/campaign_info_dialog.dart';
import 'package:campaneo_app/data/models.dart';
import 'package:campaneo_app/data/user.dart';

/// This widget acts as a tile button for the homepage screen. Where other
/// widgets can be displayed in.

class CampaignTile extends StatefulWidget {

  Campaign campaign;
  //final String title;
  List newCampaignsList;
  User currentUser;
  int index;
  BuildContext context;

  CampaignTile(this.context, this.index, this.newCampaignsList, this.campaign, this.currentUser);

  @override
  _CampaignTileState createState() => _CampaignTileState();
}

class _CampaignTileState extends State<CampaignTile> {
  AssetImage image;

  Status status;

  List<User> userList;

  @override
  Widget build(context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

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
                    height: height * 0.15,
                    width: double.maxFinite,
                    color: Colors.grey,
                  ),
                ),
              ),
              Center(
                child: Text(this.widget.campaign.name, style: TextStyle(color: Colors.white, fontSize: height / 20), softWrap: false, overflow: TextOverflow.ellipsis, maxLines: 2, textAlign: TextAlign.center),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 2, bottom: 2),
                  child: StatusWidget(this.widget.campaign.status),
                ),
              ),
            ],
          ),
          onTap: () => { showCampaignInfo(context, widget.currentUser, widget.newCampaignsList) },
        ),
      ),
    );
  }

  void updateStatus(Status status) {
    setState(() {
      this.widget.campaign.status = status;
    });
  }

  showCampaignInfo(BuildContext context, User currentUser, List newCampaignsList) {
    showDialog(
        context: context,
        builder: (context) => QueryableCampaignDetails(context, widget.index, newCampaignsList, currentUser, updateStatus, id: this.widget.campaign.id)
    );
  }
}