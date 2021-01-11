import 'package:flutter/material.dart';
import 'package:campaneo_app/widgets/menu_tile.dart';
import 'package:campaneo_app/widgets/points_and_rank.dart';

class HomePage extends StatelessWidget {
  static const String routeName = '/home';
  static const String pageTitle = 'Home';

  Function(int) changeScreen;

  HomePage(this.changeScreen);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              //TODO: change textStyle according to theme automatically
              MenuTile("Your Vehicle",  Icon(Icons.directions_car, size: 200, color: Colors.white), () { changeScreen(1);}),
              MenuTile("Your Active Campaigns", CircleAvatar(
                child: Text("12", style: TextStyle(fontSize: 125, color: Colors.white, fontWeight: FontWeight.bold)),
                radius: 125,
                backgroundColor: Colors.lightGreenAccent,
              ), null)
            ],
          ),
          Row(
            children: <Widget>[
              MenuTile("New Campaigns", Icon(Icons.search, size: 200, color: Colors.white), () { changeScreen(1);}),
              MenuTile("Contributor Points", PointsAndRank("107", "148", "47889"), () { changeScreen(2);})
            ],
          )
        ],
      ),
    );
  }
}
