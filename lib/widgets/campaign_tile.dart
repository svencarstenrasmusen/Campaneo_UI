import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

/// This widget acts as a tile button for the homepage screen. Where other
/// widgets can be displayed in.


class CampaignTile extends StatelessWidget {

  final String title;
  AssetImage image;


  CampaignTile(this.title);

  //TODO: add ontap-function, all tiles have a different screen to navigate to

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Ink(
        decoration: BoxDecoration(
          color: HexColor("#3C3C3C"),
          border: Border.all(color: HexColor("#C4C4C4"), width: 1),
          image: DecorationImage(
            image: AssetImage('assets/images/campaign-back.png'),
            fit: BoxFit.cover
          )
        ),
        child: InkWell(
          child: Stack(
            children: <Widget>[
              Center(
                child: Opacity(
                  opacity: 0.5,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.15,
                    width: double.maxFinite,
                    color: Colors.grey,
                  ),
                ),
              ),
              Center(
                child: Text(this.title, style: TextStyle(color: Colors.white, fontSize: 20)),
              ),
            ],
          ),
          onTap: () => { null },
        ),
      ),
    );
  }

}