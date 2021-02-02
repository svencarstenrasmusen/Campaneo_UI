import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:campaneo_app/widgets/information_tile.dart';
import 'package:campaneo_app/data/user.dart';

/// This widget acts as a tile button for the homepage screen. Where other
/// widgets can be displayed in.

class InformationSelectionDialog extends StatelessWidget {

  //TODO: add ontap-function, all tiles have a different screen to navigate to
  List<IconData> iconList = new List();
  List<User> userList;
  int combinedPoints = 0;

  InformationSelectionDialog(this.userList);

  @override
  Widget build(BuildContext context) {
    iconList.add(Icons.speed);
    iconList.add(Icons.build);
    iconList.add(Icons.local_gas_station);
    iconList.add(Icons.alarm);
    iconList.add(Icons.location_on);

    return Dialog(
      shape: BeveledRectangleBorder(),
      child: dialogContent(context),
    );
  }


  Widget dialogContent(BuildContext context) {
    double height = MediaQuery.of(context).size.height * 0.85;
    double width = MediaQuery.of(context).size.width * 0.80;

    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
      decoration: BoxDecoration(
        color: HexColor("#3C3C3C"),
      ),
      child: Stack(
        children: [
          Scrollbar(
            child: GridView.builder(
                itemCount: 5,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1.0
                ),
                itemBuilder: (BuildContext context, int index) => InformationTile(iconList[index], incrementPoints)
            ),
          ),
          Container(
            alignment: Alignment.bottomRight,
            child: acceptButton(context, height, width),
          )
        ],
      ),
    );
  }

  incrementPoints(value) {
    this.combinedPoints += value;
  }

  Widget acceptButton(BuildContext context, double height, double width) {
    return Container(
      height: height * 0.15,
      width: width * 0.25,
      child: Material(
        color: Colors.green,
        child: InkWell(
          child: Center(
            child: Text("CONFIRM SELECTION", style: TextStyle(fontSize: height / 20)),
          ),
          onTap: () {
            userList[2].setCompletedCampaigns(userList[2].getCompletedCampaigns+1);
            userList[2].setPoints(userList[2].getPoints + this.combinedPoints);
            Navigator.of(context).pop();
            Navigator.of(context).pop();

            },
        ),
      ),
    );
  }

}