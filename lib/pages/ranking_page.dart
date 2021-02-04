import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:campaneo_app/data/user.dart';

import '../data/campaign_fetch.dart';

class RankingPage extends StatelessWidget {
  static const String routeName = '/ranking';
  static const String pageTitle = 'Ranking';

  List<User> userList;
  User currentUser;

  RankingPage(this.userList, this.currentUser);

  @override
  Widget build(BuildContext context) {
    this.userList.sort((a,b) => b.getCompletedCampaigns.compareTo(a.getCompletedCampaigns));
    int currentUserIndex = this.userList.indexOf(this.currentUser);
    return Container(
      child: ListView.builder(
        itemCount: userList.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text("${userList[index].getName}"),
              leading: Icon(Icons.person),
              trailing: Text("Campaigns:\t${userList[index].getCompletedCampaigns} \t"),
              tileColor: index==currentUserIndex? Colors.green : null,
            );
          },
      ),
    );
  }
}
