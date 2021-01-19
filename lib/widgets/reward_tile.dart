import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:campaneo_app/data/coupons.dart';

/// This widget acts as a tile button for the homepage screen. Where other
/// widgets can be displayed in.

class RewardTile extends StatelessWidget {

  final int points;
  final int reductionPercentage;
  final Coupon coupon = new Coupon("Lorem ipsum...");

  RewardTile(this.points, this.reductionPercentage);

  //TODO: add ontap-function, all tiles have a different screen to navigate to

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      child: Ink(
        decoration: BoxDecoration(
          color: HexColor("#3C3C3C"),
          border: Border.all(color: HexColor("#C4C4C4"), width: 1),
        ),
        child: InkWell(
          child: Stack(
            children: <Widget>[
              Center(
                child: Opacity(
                  opacity: 0.5,
                  child: Container(
                    height: height * 0.15,
                    width: double.maxFinite,
                    color: Colors.grey,
                  ),
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("-${this.coupon.getReduction()}%", style: TextStyle(color: Colors.white, fontSize: height / 7)),
                    Icon(iconForCouponType(this.coupon.getType()), size: height / 7)
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 5, bottom: 5),
                  child: Text("${this.coupon.getCost()} PTS", style: TextStyle(color: Colors.white, fontSize: height / 15)),
                ),
              ),
            ],
          ),
          onTap: () => { print("reward tile pressed") },
        ),
      ),
    );
  }

  IconData iconForCouponType(couponType type) {
    print("changing screen.");
    switch(type) {
      case couponType.Fuel:
        return Icons.local_gas_station;
        break;
      case couponType.CarWash:
        return Icons.local_car_wash;
        break;
      case couponType.Service:
        return Icons.build;
        break;
      default:
        return Icons.card_giftcard;
        break;
    }
  }
}