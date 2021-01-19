import 'dart:math';

enum couponType {Fuel, CarWash, Service, Default}

class Coupon {

  int _reduction;
  int _cost;
  couponType _type;
  final String _description;

  Coupon(this._description) {
    var random = new Random();

    this._reduction = random.nextInt(100);
    this._cost = random.nextInt(1000);
    this._type = couponType.values.elementAt(random.nextInt(4));

  }

  String get description => _description;

  couponType get getType => _type;

  set setType(couponType value) {
    _type = value;
  }

  int get getCost => _cost;

  set setCost(int value) {
    _cost = value;
  }

  int get getReduction => _reduction;

  set setReduction(int value) {
    _reduction = value;
  }
}