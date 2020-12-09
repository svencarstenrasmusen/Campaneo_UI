import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

/// This widget is the points and ranked widget, displaying both the user's
/// points and also their rank next to it.

class PointsAndRank extends StatelessWidget {

  final String points;
  final String rankPosition;
  final String totalParticipants;

  PointsAndRank(this.points, this.rankPosition, this.totalParticipants);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(this.points, style: TextStyle(color: Colors.white, fontSize: 150)),
          Column(
            children: <Widget>[
              Container(height: 50),
              Text("pts", style: TextStyle(color: Colors.white, fontSize: 70)),
            ],
          ),
          Container(
            height: 150,
            width: 5,
            color: Colors.white,
          ),
          Column(
            children: <Widget>[
              Text(this.rankPosition, style: TextStyle(color: Colors.white, fontSize: 75)),
              Container(
                height: 2,
                width: 200,
                color: Colors.white,
              ),
              Text(this.totalParticipants, style: TextStyle(color: Colors.white, fontSize: 75))
            ],
          )
        ],
      ),
    );
  }

}