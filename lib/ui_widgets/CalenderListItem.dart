import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CalenderListItem extends StatelessWidget {
  final bool active;
  final DateTime datetime;

  const CalenderListItem({
    Key key,
    this.active = false,
    @required this.datetime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: AnimatedContainer(
              duration: Duration(milliseconds: 250),
              curve: Curves.easeIn,
              padding: EdgeInsets.symmetric(vertical: 18),
              decoration: BoxDecoration(
                color:
                    active ? Theme.of(context).accentColor : Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    width: 120,
                    // color: Colors.red,
                    child: Column(
                      children: <Widget>[
                        Text(
                          DateFormat("E").format(datetime),
                          style: TextStyle(
                            color: active
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            fontWeight: FontWeight.w300,
                            // fontSize: 50,
                          ),
                        ),
                        Text(
                          DateFormat("d").format(datetime),
                          style: TextStyle(
                            color: active
                                ? Theme.of(context).primaryColor
                                : Colors.black,
                            fontWeight: FontWeight.w800,
                            fontSize: 50,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 14, top: 5, bottom: 5),
                    decoration: BoxDecoration(
                      // color: Colors.blue,
                      border: Border(
                        left: BorderSide(width: 0.5, color: Colors.grey[400]),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "4 lessons",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                            // fontSize: 50,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Total cost \$250",
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontWeight: FontWeight.w300,
                            // fontSize: 50,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 50),
          Text(
            "9:00",
            style: TextStyle(color: Colors.grey[600]),
          ),
        ],
      ),
    );
  }
}
