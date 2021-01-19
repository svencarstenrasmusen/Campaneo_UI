import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:campaneo_app/faker/fake_users.dart';
import 'package:campaneo_app/data/user.dart';

import '../data/campaign_fetch.dart';

class RankingPage extends StatelessWidget {
  static const String routeName = '/ranking';
  static const String pageTitle = 'Ranking';

  List<User> userList = new FakeUsers().getFakeUserList();

  @override
  Widget build(BuildContext context) {
    print("UserList: $userList");

    return Container(
      child: ListView.builder(
        itemCount: userList.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text("${userList[index].getName}"),
            );
          },
      ),
    );
  }
}
