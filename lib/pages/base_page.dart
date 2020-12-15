import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'pages.dart';
import 'package:hexcolor/hexcolor.dart';

class BasePage extends StatefulWidget {
  @override
  _BasePageState createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  int _selectedIndex = 0;
  Widget _selectedPage = HomePage();

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
                onPressed: () => { print('tapping homeButton') },
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
    return '${now.hour}:${now.minute}';
  }

  //TODO: build page
}