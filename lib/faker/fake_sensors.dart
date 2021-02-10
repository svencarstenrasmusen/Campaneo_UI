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
      Sensor sensor = new Sensor(generateSensorTitle(i), generateSensorDescription(i), i);
      this.sensorList.add(sensor);
    }
  }

  // ignore: missing_return
  String generateSensorTitle(int index) {
    switch (index) {
      case 0:
        return "Wheel Speed Sensor";
        break;
      case 1:
        return "Vehicle Specifications";
        break;
      case 2:
        return "Average Fuel Consumption";
        break;
      case 3:
        return "Drive Duration";
        break;
      case 4:
        return "GPS - Global Positioning System";
        break;
    }
  }

  // ignore: missing_return
  String generateSensorDescription(int index) {
    switch (index) {
      case 0:
        return "Sharing the current speed while driving provides the campaign more detailed information about the driving behaviour and helps analyse whether or not speed is an issue under certain circumstances. This information is confidentially stored and not shared with any third parties.";
        break;
      case 1:
        return "By agreeing to opt-in to share the car specifications, allows us to receive information about what type of car (brand, year, engine type) you are driving, including the current ESP information.";
        break;
      case 2:
        return "Selecting the fuel consumption sensor will send us your average fuel consumption during the participation duration of this campaign.";
        break;
      case 3:
        return "If you choose to share your drive durations, from turning on the engine to turning it off including the current time, will allow us to gain information about a user's average driving time and general driving hours.";
        break;
      case 4:
        return "If you agree to sharing your GPS (Global Positioning System), we will receive your current locations while driving.";
        break;
    }
  }
}