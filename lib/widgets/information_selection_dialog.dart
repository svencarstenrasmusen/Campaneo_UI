import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:campaneo_app/widgets/information_tile.dart';

/// This widget acts as a tile button for the homepage screen. Where other
/// widgets can be displayed in.

class InformationSelectionDialog extends StatelessWidget {

  //TODO: add ontap-function, all tiles have a different screen to navigate to

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: BeveledRectangleBorder(),
      child: dialogContent(context),
    );
  }

  Widget dialogContent(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.85,
      width: MediaQuery.of(context).size.width * 0.80,
      padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
      decoration: BoxDecoration(
        color: HexColor("#3C3C3C"),
      ),
      child: Scrollbar(
        child: GridView.builder(
            itemCount: 7,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1.0
            ),
            itemBuilder: (BuildContext context, int index) => InformationTile(Icon(Icons.speed), index)
        ),
      ),
    );
  }

}