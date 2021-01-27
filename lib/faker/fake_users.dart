import 'package:campaneo_app/data/user.dart';
import 'dart:math';

import 'package:flutter/cupertino.dart';

/// CLass to create a fake list of users, for the demo.
class FakeUsers {
  int numberOfUsers = 21;

  int maxPoints;
  int maxCompletedCampaigns;
  var random = new Random();
  List<User> userList = new List();

  FakeUsers() {
    generateListOfFakeUsers();
    this.userList = bubbleSort(userList);
  }

  User generateFakeUser() {

    String fakeName = "User: ${random.nextInt(100000)}";
    int fakePoints = random.nextInt(500);
    int fakeCompletedCampaigns = random.nextInt(40);

    User fakeUser = User(fakeName, fakePoints, fakeCompletedCampaigns);
    return fakeUser;
  }

  generateListOfFakeUsers() {
    for (int i = 0 ; i < 21 ; i++) {
      User user = generateFakeUser();
      this.userList.add(user);
    }
  }

  List<User> getFakeUserList() {
    return this.userList;
  }

  List<User> bubbleSort(List<User> userList) {

    for (int i = 0 ; i < userList.length - 1 ; i++) {
      for (int j = 0; j < userList.length - i - 1; j++) {
        if (userList[j].getCompletedCampaigns < userList[j+1].getCompletedCampaigns) {
          User temp = userList[j];
          userList[j] = userList[j+1];
          userList[j+1] = temp;
        }
      }
    }
    return  userList;
  }
}