import 'package:campaneo_app/data/sensor.dart';
import 'dart:math';

import 'package:flutter/cupertino.dart';

/// CLass to create a fake list of users, for the demo.
class FakeSensors {
  int numberOfSensors = 5;

  List<Sensor> sensorList = new List();

  FakeSensors() {
    generateListOfFakeSensors();
  }

  generateListOfFakeSensors() {
    for (int i = 0 ; i < numberOfSensors ; i++) {
      String description = "Sample description for sensortype $i.";
      Sensor sensor = new Sensor(description, i);
      this.sensorList.add(sensor);
    }
  }
}