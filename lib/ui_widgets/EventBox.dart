import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ColorEventBox extends StatelessWidget {
  final Color color;
  final String title;
  final String subTitle;
  final String image;
  final Function onTap;

  const ColorEventBox({
    Key key,
    @required this.color,
    this.title,
    this.subTitle,
    this.image,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        decoration: BoxDecoration(
          color: color.withOpacity(0.05),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                // color: Colors.red,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: 35,
                          child: SvgPicture.asset("assets/$image.svg"),
                        ),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              title,
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 24,
                                color: color,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              subTitle,
                              style: TextStyle(
                                color: color,
                                // fontWeight: FontWeight.w800,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 25),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.access_time,
                          color: color,
                          size: 20,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "9:00 - 9:45",
                          style: TextStyle(
                              color: color,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              // height: double.in,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(Icons.chevron_right, color: color),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
