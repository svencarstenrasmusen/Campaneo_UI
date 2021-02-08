import 'dart:math';

///
/// Sensor class to represent different types of sensors that a campaign can ask
/// for. A sensorType is in integer and depending on the number, a different
/// sensor is requested.
/// Sensor types:
///   0 -> Speed-o-meter
///   1 -> Wrench (Car specs)
///   2 -> Fuel consumption
///   3 -> Drive duration
///   4 -> GPS

class Sensor {
  int points = 5;
  bool selected = false;
  String description;
  int sensorType;

  Sensor(this.description, this.sensorType);
}