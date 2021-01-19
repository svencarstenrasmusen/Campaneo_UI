import 'dart:math';

enum couponType {Fuel, CarWash, Service, Default}

class Coupon {

  int reduction;
  int cost;
  couponType type;
  final String description;

  Coupon(this.description) {
    var random = new Random();

    this.reduction = random.nextInt(100);
    this.cost = random.nextInt(1000);
    this.type = couponType.values.elementAt(random.nextInt(4));

  }

  int getReduction() {
    return this.reduction;
  }

  int getCost() {
    return this.cost;
  }

  couponType getType() {
    return this.type;
  }

  String getDescription() {
    return this.description;
  }
}