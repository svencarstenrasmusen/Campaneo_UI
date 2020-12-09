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
      bottomNavigationBar: null,
      body: _selectedPage,
    );
  }

  //TODO: build page
}