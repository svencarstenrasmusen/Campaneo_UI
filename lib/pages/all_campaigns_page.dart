import 'package:flutter/material.dart';
import 'package:campaneo_app/widgets/campaign_tile.dart';

class AllCampaignsPage extends StatelessWidget {
  static const String routeName = '/allcampaigns';
  static const String pageTitle = 'AllCampaigns';

  //TODO: replace hardcoded tiles with actual tiles
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Column(
            children: [
              CampaignTile("Economy Driving"),
              CampaignTile("Economy Driving"),
              CampaignTile("Economy Driving")
            ],
          ),
          Column(
            children: [
              CampaignTile("Economy Driving"),
              CampaignTile("Economy Driving"),
              CampaignTile("Economy Driving")
            ],
          ),
          Column(
            children: [
              CampaignTile("Economy Driving"),
              CampaignTile("Economy Driving"),
              CampaignTile("Economy Driving")
            ],
          )
        ],
      ),
    );
  }
}
