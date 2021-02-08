import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:campaneo_app/widgets/campaign_tile.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:campaneo_app/data/models.dart';
import 'package:campaneo_app/data/user.dart';

import '../data/campaign_fetch.dart';

class ActiveCampaignsPage extends StatefulWidget {
  static const String routeName = '/activecampaigns';
  static const String pageTitle = 'ActiveCampaigns';
  User currentUser;

  ActiveCampaignsPage(this.currentUser);

  @override
  _ActiveCampaignsPageState createState() => _ActiveCampaignsPageState();
}

class _ActiveCampaignsPageState extends State<ActiveCampaignsPage> {
  List<User> userList;

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: GridView.builder(
        itemCount: widget.currentUser.acceptedCampaigns.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1.85
        ),
        itemBuilder: (context, int index) =>
            CampaignTile(context, index, widget.currentUser.acceptedCampaigns[index], widget.currentUser, updateList),
      ),
    );
  }

  updateList() {
    setState(() {
      widget.currentUser.acceptedCampaigns = widget.currentUser.acceptedCampaigns;
    });
  }
}
