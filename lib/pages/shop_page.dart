import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:campaneo_app/widgets/reward_tile.dart';
import 'package:campaneo_app/data/user.dart';

class ShopPage extends StatefulWidget {
  static const String routeName = '/shop';
  static const String pageTitle = 'Shop';
  List<User> userList;
  User currentUser;

  ShopPage(this.userList, this.currentUser);

  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {

    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: Scrollbar(
        child: GridView.builder(
            itemCount: 20,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1.85
            ),
            itemBuilder: (BuildContext context, int index) => RewardTile(index, 30, widget.userList, updateList, widget.currentUser)
        ),
      ),
    );
  }

  updateList() {
    setState(() {
      widget.userList = widget.userList;
    });
  }
}
