class User {

  String _name;
  int _points;
  int _completedCampaigns;

  User(String name, int points, int completedCampaigns) {
    this._name = name;
    this._points = points;
    this._completedCampaigns = completedCampaigns;
  }

  String get getName => _name;
  int get getPoints => _points;
  int get getCompletedCampaigns => _completedCampaigns;

  set setCompletedCampaigns(int value) {
    _completedCampaigns = value;
  }

  set setPoints(int value) {
    _points = value;
  }

  set setName(String value) {
    _name = value;
  }
}