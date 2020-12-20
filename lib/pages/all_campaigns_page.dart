import 'package:flutter/material.dart';
import 'package:campaneo_app/widgets/campaign_tile.dart';

class AllCampaignsPage extends StatelessWidget {
  static const String routeName = '/allcampaigns';
  static const String pageTitle = 'AllCampaigns';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Column(
            children: [
              CampaignTile("Economy Driving")
            ],
          ),
          Column(),
          Column()
        ],
      ),
    );
  }
}
