import 'package:campaneo_app/data/user.dart';
import 'dart:math';

import 'package:flutter/cupertino.dart';

/// CLass to create a fake list of users, for the demo.
class FakeUsers {
  int numberOfUsers = 21;

  int maxPoints;
  int maxCompletedCampaigns;

  List<User> userList;

  User generateFakeUser() {
    var random = new Random();
    String fakeName = "User: ${random.nextInt(100000)}";
    int fakePoints = random.nextInt(10000);
    int fakeCompletedCampaigns = random.nextInt(30);

    User fakeUser = User(fakeName, fakePoints, fakeCompletedCampaigns);

    return fakeUser;
  }

  generateListOfFakeUsers() {
    for (int i = 0 ; i < numberOfUsers ; i++) {
      userList.add(generateFakeUser());
    }
  }

  List<User> getFakeUserList() {
    return this.userList;
  }
}