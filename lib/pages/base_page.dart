import 'package:campaneo_app/pages/all_campaigns_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'pages.dart';


class BasePage extends StatefulWidget {
  @override
  _BasePageState createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  int _selectedIndex = 0;
  Widget _selectedPage;

  _BasePageState() {
    _selectedPage = HomePage(changeScreen);
    //_selectedPage = AllCampaignsPage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _selectedPage,
      bottomNavigationBar: SizedBox(
        height: MediaQuery.of(context).size.height / 10,
        child: BottomAppBar(
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Spacer(),
              IconButton(
                iconSize: 60,
                icon: Icon(Icons.home),
                onPressed: () => { changeScreen(0) },
              ),
              Spacer(flex: 20),
              Text(_currentTime(), style: TextStyle(color: Colors.white, fontSize: 60)),
              Spacer()
            ],
          ),
        ),
      )
    );
  }

  String _currentTime() {
    var now = DateTime.now();
    String time = DateTime.parse(now.toIso8601String()).toLocal().toString();
    time = time.substring(11, 16);
    return '$time';
  }

  changeScreen(x) {
    print("changing screen.");
    setState(() {
      _selectedIndex = x;
      switch(_selectedIndex) {
        case 0:
          _selectedPage = HomePage(changeScreen);
          break;
        case 1:
          _selectedPage = AllCampaignsPage();
          break;
      }
    });
  }
  //TODO: build page
}