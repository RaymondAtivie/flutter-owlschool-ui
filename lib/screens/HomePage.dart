import 'package:flutter/material.dart';
import 'package:owlschool/screens/ListPage.dart';

import '../ui_widgets/AppDrawer.dart';
import '../ui_widgets/CalenderListItem.dart';
import '../ui_widgets/DateSelector.dart';
import '../ui_widgets/FilterSelector.dart';
import '../ui_widgets/MyAppBar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  List<DateTime> dates = [];
  DateTime selectedDate;

  @override
  void initState() {
    super.initState();
    dates = List.generate(10, (i) {
      return DateTime.now().add(Duration(days: i));
    });

    if (selectedDate == null) selectedDate = dates[0];
  }

  selectDate(DateTime date) {
    setState(() => selectedDate = date);

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) {
          return ListPage();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      backgroundColor: Colors.white,
      drawer: AppDrawer(),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: <Widget>[
            MyAppBar(drawerKey: _drawerKey),
            Expanded(
              child: ListView(
                children: <Widget>[
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      children: <Widget>[
                        DateSelector(),
                        Spacer(),
                        FilterSelector(),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  ListView.separated(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (_, ix) => GestureDetector(
                      onTap: () => selectDate(dates[ix]),
                      child: CalenderListItem(
                        datetime: dates[ix],
                        active: selectedDate == dates[ix],
                      ),
                    ),
                    separatorBuilder: (_, __) => SizedBox(
                      height: 10,
                    ),
                    itemCount: dates.length,
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
