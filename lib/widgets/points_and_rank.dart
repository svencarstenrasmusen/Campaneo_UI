import 'package:flutter/material.dart';

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
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(this.points, style: TextStyle(color: Colors.white, fontSize: 125)),
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
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(this.rankPosition, style: TextStyle(color: Colors.white, fontSize: 75)),
                  Text("th", style: TextStyle(color: Colors.white, fontSize: 45)),
                ],
              ),
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