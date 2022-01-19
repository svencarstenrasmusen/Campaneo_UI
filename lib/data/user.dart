import 'package:campaneo_app/data/models.dart';

class User {

  String _name;
  int _points;
  int _completedCampaigns;
  List<Campaign> acceptedCampaigns = new List();
  List<Campaign> rejectedCampaigns = new List();
  List<dynamic> newCampaigns = new List();

  User(String name, int points, int completedCampaigns) {
    this._name = name;
    this._points = points;
    this._completedCampaigns = completedCampaigns;
  }

  String get getName => _name;
  int get getPoints => _points;
  int get getCompletedCampaigns => _completedCampaigns;

  void setCompletedCampaigns(int value) {
    _completedCampaigns = value;
  }

  //demo
  void setPoints(int value) {
    _points = value;
  }

  set setName(String value) {
    _name = value;
  }

  void setPointsVoid(int i) {
    _points = i;
  }
}