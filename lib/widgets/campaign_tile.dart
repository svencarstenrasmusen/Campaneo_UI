import 'dart:ui';

import 'package:campaneo_app/widgets/queryable_campaign_details.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:campaneo_app/widgets/status_widget.dart';
import 'package:campaneo_app/widgets/campaign_info_dialog.dart';
import 'package:campaneo_app/data/models.dart';

/// This widget acts as a tile button for the homepage screen. Where other
/// widgets can be displayed in.

class CampaignTile extends StatelessWidget {

  final Campaign campaign;
  //final String title;
  AssetImage image;
  Status status;

  CampaignTile(this.campaign);

  //TODO: add ontap-function, all tiles have a different screen to navigate to

  @override
  Widget build(BuildContext context) {
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
                child: Text(this.campaign.name, style: TextStyle(color: Colors.white, fontSize: height / 20), softWrap: false, overflow: TextOverflow.ellipsis, maxLines: 2, textAlign: TextAlign.center),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 2, bottom: 2),
                  child: StatusWidget(this.campaign.status),
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
        builder: (BuildContext context) => QueryableCampaignDetails(id: this.campaign.id)
    );
  }
}