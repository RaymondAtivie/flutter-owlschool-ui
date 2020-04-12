import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AvatarDropdown extends StatelessWidget {
  const AvatarDropdown({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 8, top: 8, right: 20, bottom: 8),
      decoration: BoxDecoration(
        // color: Colors.red,
        color: Theme.of(context).accentColor,
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(100),
          right: Radius.circular(40),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          CircleAvatar(
            backgroundColor: Colors.transparent,
            backgroundImage: NetworkImage(
                "https://randomuser.me/api/portraits/med/men/75.jpg"),
          ),
          SizedBox(width: 15),
          SvgPicture.asset("assets/arrow down.svg", width: 15),
        ],
      ),
    );
  }
}
