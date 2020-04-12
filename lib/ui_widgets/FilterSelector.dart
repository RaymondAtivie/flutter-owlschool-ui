import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'AccentBox.dart';

class FilterSelector extends StatelessWidget {
  const FilterSelector({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AccentBox(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SvgPicture.asset("assets/filter.svg", width: 12),
          SizedBox(width: 15),
          Text("Filter"),
          SizedBox(width: 15),
          SvgPicture.asset("assets/arrow down.svg", width: 12),
        ],
      ),
    );
  }
}