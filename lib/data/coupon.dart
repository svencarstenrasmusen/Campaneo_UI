import 'dart:math';

enum couponType {Fuel, CarWash, Service, Default}

class Coupon {

  int _reduction;
  int _cost;
  couponType _type;
  final String _description;
  var random = new Random();

  Coupon(this._description) {

    this._reduction = (random.nextDouble() * (50 - 5) + 5).floor();
    this._cost = (random.nextDouble() * (5 - 2) + 2).floor() * _reduction;
    this._type = couponType.values.elementAt(random.nextInt(3));

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