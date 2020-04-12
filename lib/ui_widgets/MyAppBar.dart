import 'package:flutter/material.dart';

import 'AvatarDropdown.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    Key key,
    @required GlobalKey<ScaffoldState> drawerKey,
  })  : _drawerKey = drawerKey,
        super(key: key);

  final GlobalKey<ScaffoldState> _drawerKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1, color: Colors.grey[100]),
        ),
      ),
      child: Row(
        children: <Widget>[
          GestureDetector(
            onTap: () => _drawerKey.currentState.openDrawer(),
            child: Image.asset(
              "assets/logo.png",
              width: 50,
            ),
          ),
          Spacer(),
          AvatarDropdown(),
        ],
      ),
    );
  }
}
