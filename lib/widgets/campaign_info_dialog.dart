import 'dart:ui';
import 'package:campaneo_app/widgets/information_selection_dialog.dart';
import 'package:campaneo_app/widgets/queryable_campaign_details.dart';
import 'package:campaneo_app/widgets/status_widget.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:campaneo_app/data/models.dart';
import 'package:campaneo_app/data/user.dart';

/// This widget acts as a tile button for the homepage screen. Where other
/// widgets can be displayed in.

class CampaignInfoDialog extends StatelessWidget {

  /**final String campaigner;
  final String title;
  final String description;
  final String phoneNumber;
  final String address;
  final String email;*/

  final Campaign campaignDetails;
  BuildContext context;
  List<User> userList;
  User currentUser;

  CampaignInfoDialog(@required this.campaignDetails, this.context, this.currentUser);

  @override
  Widget build(context) {
    return Dialog(
      shape: BeveledRectangleBorder(),
      child: dialogContent(context),
    );
  }

  Widget dialogContent(context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: height * 0.85,
      width: width * 0.80,
      padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
      decoration: BoxDecoration(
        color: HexColor("#3C3C3C"),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(this.campaignDetails.name, style: TextStyle(fontSize: height / 20, color: Colors.white70), textAlign: TextAlign.center),
          Text(this.campaignDetails.organization.name, style: TextStyle(fontSize: height / 40, color: Colors.white70)),
          Container(
            height: height * 0.3,
            child: Scrollbar(
              child: SingleChildScrollView(
                child: Text(this.campaignDetails.description, style: TextStyle(fontSize: height / 30, color: Colors.white70)),
                scrollDirection: Axis.vertical,
              ),
            )
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                campaignerDetailRow(Icons.home, this.campaignDetails.organization.address.getPrintableAddress(), height),
                campaignerDetailRow(Icons.phone, this.campaignDetails.organization.phone, height),
                campaignerDetailRow(Icons.mail_outline, this.campaignDetails.organization.email, height)
                //Text(this.campaignDetails.organization.address.getPrintableAddress(), style: TextStyle(fontSize: height / 40, color: Colors.white70)),
                //Text(this.campaignDetails.organization.phone, style: TextStyle(fontSize: height / 40, color: Colors.white70)),
                //Text(this.campaignDetails.organization.email, style: TextStyle(fontSize: height / 40, color: Colors.white70)),
              ],
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              continueButton(context, height, width),
              declineButton(context, height, width)
            ],
          ),
        ],
      ),
    );
  }
  
  Widget campaignerDetailRow(IconData iconData, String text, height) {
    return Row(
      children: [
        Icon(iconData),
        Container(width: 5),
        Text(text, style: TextStyle(fontSize: height / 40, color: Colors.white70)),
      ],
    );
  }

  Widget continueButton(BuildContext context, double height, double width) {
    return Container(
      height: height * 0.15,
      width: width * 0.25,
      child: Material(
        color: Colors.green,
        child: InkWell(
          child: Center(
            child: Text("CONTINUE", style: TextStyle(fontSize: height / 10)),
          ),
          onTap: () => { showInformationSelection(context, currentUser) },
        ),
      ),
    );
  }

  Widget declineButton(BuildContext context, double height, double width) {
    return Container(
      height: height * 0.15,
      width: width * 0.25,
      child: Material(
        color: Colors.red,
        child: InkWell(
          child: Center(
            child: Text("DECLINE", style: TextStyle(fontSize: height / 10)),
          ),
          onTap: () {
            this.campaignDetails.status = Status.Rejected;
            (this.context as Element).markNeedsBuild();
            Navigator.pop(context);
          },
        ),
      ),
    );
  }

  showInformationSelection(BuildContext context, userList) {
    showDialog(
        context: context,
        builder: (BuildContext context) => InformationSelectionDialog(userList)
    );
  }

}