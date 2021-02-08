import 'dart:ui';
import 'dart:math';
import 'package:campaneo_app/data/models.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:campaneo_app/widgets/information_detail_dialog.dart';
import 'package:campaneo_app/data/user.dart';
import 'package:campaneo_app/widgets/status_widget.dart';


/// This widget acts as a tile button for the homepage screen. Where other
/// widgets can be displayed in.

class InformationTile extends StatelessWidget {
  
  var random = new Random();
  final IconData iconData;
  Function(int) addPoints;
  int points;
  Color color = HexColor("#C4C4C4");
  bool selected = false;
  User currentUser;
  int campaignListIndex;
  int index;
  Campaign currentCampaign;

  InformationTile(this.iconData, this.addPoints, this.currentUser, this.campaignListIndex, this.index, this.currentCampaign) {
    this.points = (random.nextDouble() * (10 - 1) + 1).floor();
  }

  //TODO: add ontap-function, all tiles have a different screen to navigate to

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: HexColor("#3C3C3C"), width: 5),
      ),
      child: Material(
        color: currentCampaign.sensorList[index].selected? Colors.green : HexColor("#C4C4C4"),
        child: InkWell(
          splashColor: Colors.white70,
          child: Container(
            padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(this.iconData, size: width / 6, color: HexColor("#3C3C3C")),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("${currentCampaign.sensorList[index].points} PTS", style: TextStyle(fontSize: height / 15, color: HexColor("#3C3C3C"))),
                    IconButton(
                        icon: Icon(Icons.info, size: height / 15, color: HexColor("#3C3C3C")),
                        padding: EdgeInsets.all(0),
                        onPressed: () => {showCampaignInfo(context)})
                  ],
                ),
              ],
            ),
          ),
          onTap: () {
            if(currentCampaign.status == Status.Accepted) {
              print("not editable");
            } else {
              this.addPoints(this.points);
              currentCampaign.sensorList[index].selected = !currentCampaign.sensorList[index].selected;
              (context as Element).markNeedsBuild();
            }
          },
        ),
      ),
    );
  }

  showCampaignInfo(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) => InformationDetailDialog(
            "Wheel Speed Sensor",
            "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
            3)
    );
  }
}