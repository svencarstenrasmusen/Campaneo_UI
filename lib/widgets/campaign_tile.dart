import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

/// This widget acts as a tile button for the homepage screen. Where other
/// widgets can be displayed in.


class CampaignTile extends StatelessWidget {

  final String title;


  CampaignTile(this.title);

  //TODO: add ontap-function, all tiles have a different screen to navigate to

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.30,
      width: MediaQuery.of(context).size.width / 3,
      child: Ink(
        decoration: BoxDecoration(
          color: HexColor("#3C3C3C"),
          border: Border.all(color: HexColor("#C4C4C4"), width: 1),
          image: DecorationImage(
            image: AssetImage('assets/images/campaign-back.png')
          )
        ),
        child: InkWell(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Opacity(
                opacity: 0.5,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.15,
                  width: double.maxFinite,
                  color: Colors.grey,
                  child: Center(
                    child: Text(this.title, style: TextStyle(color: Colors.white, fontSize: 20)),
                  ),
                ),
              )
            ],
          ),
          onTap: () => { null },
        ),
      ),
    );
  }

}