import 'package:flutter/material.dart';
import 'package:campaneo_app/widgets/tile.dart';

class HomePage extends StatelessWidget {
  static const String routeName = '/home';
  static const String pageTitle = 'Home';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              //TODO: change textStyle according to theme automatically
              MenuTile("Your Vehicle"),
              MenuTile("Your Active Campaigns")
            ],
          ),
          Row(
            children: <Widget>[
              MenuTile("New Campaigns"),
              MenuTile("Contributor Points")
            ],
          )
        ],
      ),
    );
  }
}
