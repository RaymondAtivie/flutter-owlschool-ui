import 'package:flutter/material.dart';
import 'package:owlschool/screens/DetailsDrawer.dart';

import '../ui_widgets/AccentBox.dart';
import '../ui_widgets/AppDrawer.dart';
import '../ui_widgets/EventBox.dart';
import '../ui_widgets/MyAppBar.dart';

class ListPage extends StatelessWidget {
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  openDetail() {
    _drawerKey.currentState.openEndDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      backgroundColor: Colors.white,
      drawer: AppDrawer(),
      endDrawer: DetailsDrawer(),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: <Widget>[
            MyAppBar(
              drawerKey: _drawerKey,
              allowBack: true,
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 24),
                children: <Widget>[
                  SizedBox(height: 20),
                  AccentBox(
                    child: Text("9:45 - 10:00 Coffee break"),
                  ),
                  SizedBox(height: 10),
                  ColorEventBox(
                    color: Color(0xFF1a55af),
                    title: "Nintendo",
                    subTitle: "Onboarding",
                    image: "bluedp",
                    onTap: openDetail,
                  ),
                  SizedBox(height: 10),
                  AccentBox(
                    child: Text("9:45 - 10:00 Coffee break"),
                  ),
                  SizedBox(height: 10),
                  ColorEventBox(
                    color: Color(0xFF5843be),
                    title: "MasterCard",
                    subTitle: "Starting Up",
                    image: "purpledp",
                    onTap: openDetail,
                  ),
                  SizedBox(height: 10),
                  AccentBox(
                    child: Text("9:45 - 10:00 Coffee break"),
                  ),
                  SizedBox(height: 10),
                  ColorEventBox(
                    color: Colors.deepOrange,
                    title: "Toggl",
                    subTitle: "Marketing",
                    image: "orangedp",
                    onTap: openDetail,
                  ),
                  SizedBox(height: 10),
                  AccentBox(
                    child: Text("9:45 - 10:00 Coffee break"),
                  ),
                  SizedBox(height: 10),
                  ColorEventBox(
                    color: Colors.green,
                    title: "Starbucks",
                    subTitle: "Sales Handbook",
                    image: "greendp",
                    onTap: openDetail,
                  ),
                  SizedBox(height: 100),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
