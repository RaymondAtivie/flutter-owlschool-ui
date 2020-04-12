import 'package:flutter/material.dart';

class DetailsDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.horizontal(left: Radius.circular(20)),
      elevation: 4,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        width: MediaQuery.of(context).size.width * 0.65,
        height: MediaQuery.of(context).size.height * 0.8,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.horizontal(left: Radius.circular(20)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Nintendo",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Onboarding: How to transform new signups into successful users.",
              style: TextStyle(
                color: Colors.grey[700],
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(height: 40),
            Text(
              "Participants",
              style: TextStyle(
                color: Colors.grey[700],
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(height: 8),
            StackedPeople(),
            SizedBox(height: 40),
            KeyValueItem(
              title: "Date",
              value: "11 March, 2020",
              icon: Icons.calendar_today,
            ),
            SizedBox(height: 20),
            KeyValueItem(
              title: "Time",
              value: "9:00 - 9:45",
              icon: Icons.access_time,
            ),
            SizedBox(height: 20),
            KeyValueItem(
              title: "Duration",
              value: "45 mins",
              icon: Icons.calendar_today,
            ),
            SizedBox(height: 20),
            KeyValueItem(
              title: "Lesson Cost",
              value: "\$120",
              icon: Icons.monetization_on,
            ),
            SizedBox(height: 20),
            Spacer(),
            Divider(height: 50),
            Row(
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    elevation: 0,
                    color: Theme.of(context).primaryColor,
                    onPressed: () {},
                    child: Text(
                      "Join a class",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: RaisedButton(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    elevation: 0,
                    color: Colors.white,
                    onPressed: () {},
                    child: Text(
                      "Reschedule",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class StackedPeople extends StatelessWidget {
  const StackedPeople({
    Key key,
  }) : super(key: key);

  final int count = 3;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Stack(
          overflow: Overflow.visible,
          children: <Widget>[
            Container(
              width: (40 + (30 * count)).toDouble(),
            ),
            CircleAvatar(
              backgroundColor: Colors.transparent,
              backgroundImage: NetworkImage(
                "https://randomuser.me/api/portraits/med/women/70.jpg",
              ),
            ),
            for (var i = 1; i <= count; i++)
              Positioned(
                left: (30 * i).toDouble(),
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: NetworkImage(
                    "https://randomuser.me/api/portraits/med/women/${i + 70}.jpg",
                  ),
                ),
              ),
          ],
        ),
        SizedBox(width: 8),
        CircleAvatar(
          foregroundColor: Colors.grey,
          backgroundColor: Theme.of(context).accentColor,
          child: FittedBox(
              child: Padding(
            padding: const EdgeInsets.all(12),
            child: Text("+34"),
          )),
        )
      ],
    );
  }
}

class KeyValueItem extends StatelessWidget {
  const KeyValueItem({
    Key key,
    this.value,
    this.title,
    this.icon,
  }) : super(key: key);

  final String value;
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(top: 2),
          alignment: Alignment.topLeft,
          width: 40,
          child: Icon(
            icon,
            color: Colors.grey[400],
            size: 20,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              value,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 3),
            Text(
              title,
              style: TextStyle(
                  color: Colors.grey[500],
                  fontWeight: FontWeight.w300,
                  fontSize: 13),
            ),
          ],
        )
      ],
    );
  }
}
