import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'pages.dart';

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
      bottomNavigationBar: SizedBox(
        height: MediaQuery.of(context).size.height / 10,
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.timer), label: "Time")
          ],
        ),
      ),
      body: _selectedPage,
    );
  }

  //TODO: build page
}