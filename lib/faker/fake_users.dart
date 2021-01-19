import 'package:campaneo_app/data/user.dart';
import 'dart:math';

import 'package:flutter/cupertino.dart';

/// CLass to create a fake list of users, for the demo.
class FakeUsers {
  int numberOfUsers = 21;

  int maxPoints;
  int maxCompletedCampaigns;
  var random = new Random();
  List<User> userList = new List<User>();

  FakeUsers() {
    generateListOfFakeUsers();
  }

  User generateFakeUser() {

    String fakeName = "User: ${random.nextInt(100000)}";
    int fakePoints = random.nextInt(10000);
    int fakeCompletedCampaigns = random.nextInt(30);

    User fakeUser = User(fakeName, fakePoints, fakeCompletedCampaigns);
    return fakeUser;
  }

  generateListOfFakeUsers() {
    for (int i = 0 ; i < 21 ; i++) {
      User user = generateFakeUser();
      userList.add(user);
    }
  }

  List<User> getFakeUserList() {
    return this.userList;
  }
}