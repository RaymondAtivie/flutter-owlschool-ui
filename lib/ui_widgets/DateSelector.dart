import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

import 'AccentBox.dart';

class DateSelector extends StatefulWidget {
  const DateSelector({
    Key key,
  }) : super(key: key);

  @override
  _DateSelectorState createState() => _DateSelectorState();
}

class _DateSelectorState extends State<DateSelector> {
  DateTime dateTime;

  @override
  void initState() {
    super.initState();
    dateTime = DateTime.now();
  }

  addMonth() {
    print("adding month");
    setState(() {
      dateTime = dateTime.add(Duration(days: 31));
    });
  }

  removeMonth() {
    print("removing month");
    setState(() {
      dateTime = dateTime.subtract(Duration(days: 31));
    });
  }

  @override
  Widget build(BuildContext context) {
    return AccentBox(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          GestureDetector(
            onTap: removeMonth,
            child: RotatedBox(
              quarterTurns: 1,
              child: SvgPicture.asset("assets/arrow down.svg", width: 12),
            ),
          ),
          SizedBox(width: 15),
          Text(DateFormat("MMMM y").format(dateTime)),
          SizedBox(width: 15),
          GestureDetector(
            onTap: addMonth,
            child: RotatedBox(
              quarterTurns: 3,
              child: SvgPicture.asset("assets/arrow down.svg", width: 12),
            ),
          ),
        ],
      ),
    );
  }
}
