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
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(this.points, style: TextStyle(color: Colors.white, fontSize: height / 6)),
              Text("pts", style: TextStyle(color: Colors.white, fontSize: height / 10)),
            ],
          ),
          Container(
            height: height / 5,
            width: 4,
            color: Colors.white,
          ),
          Column(
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(this.rankPosition, style: TextStyle(color: Colors.white, fontSize: height / 10)),
                  Text("rd", style: TextStyle(color: Colors.white, fontSize: height / 14)),
                ],
              ),
              Container(
                height: 2,
                width: width / 5,
                color: Colors.white,
              ),
              Text(this.totalParticipants, style: TextStyle(color: Colors.white, fontSize: height / 10))
            ],
          )
        ],
      ),
    );
  }

}