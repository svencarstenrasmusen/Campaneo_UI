import 'package:flutter/material.dart';
import 'package:campaneo_app/widgets/menu_tile.dart';
import 'package:campaneo_app/widgets/points_and_rank.dart';
import 'package:campaneo_app/data/user.dart';

class HomePage extends StatelessWidget {
  static const String routeName = '/home';
  static const String pageTitle = 'Home';


  Function(int) changeScreen;
  List<User> userList;

  HomePage(this.changeScreen, this.userList);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double iconSize = height / 3;

    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              //TODO: change textStyle according to theme automatically
              MenuTile("Your Vehicle",  Icon(Icons.directions_car, size: iconSize, color: Colors.white), () { print("tapped YOUR VEHICLE");}),
              MenuTile("Your Active Campaigns", CircleAvatar(
                child: Text("${userList[2].getCompletedCampaigns}", style: TextStyle(fontSize: height / 6.5, color: Colors.white, fontWeight: FontWeight.bold)),
                radius: height / 6.5,
                backgroundColor: Colors.lightGreen,
              ), null)
            ],
          ),
          Row(
            children: <Widget>[
              MenuTile("New Campaigns", Icon(Icons.search, size: iconSize, color: Colors.white), () { changeScreen(1);}),
              MenuTile("Contributor Points", PointsAndRank("${userList[2].getPoints}", "3", "21"), () { changeScreen(4);})
            ],
          )
        ],
      ),
    );
  }
}
