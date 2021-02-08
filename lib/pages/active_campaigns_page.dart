import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:campaneo_app/widgets/campaign_tile.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:campaneo_app/data/models.dart';
import 'package:campaneo_app/data/user.dart';

import '../data/campaign_fetch.dart';

class ActiveCampaignsPage extends StatelessWidget {
  static const String routeName = '/activecampaigns';
  static const String pageTitle = 'ActiveCampaigns';
  List<User> userList;
  User currentUser;

  ActiveCampaignsPage(this.currentUser);

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: GridView.builder(
        itemCount: currentUser.acceptedCampaigns.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1.85
        ),
        itemBuilder: (context, int index) =>
            CampaignTile(context, index, currentUser.acceptedCampaigns[index], currentUser),
      ),
    );
  }
}
