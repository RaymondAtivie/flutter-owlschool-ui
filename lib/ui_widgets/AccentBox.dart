import 'package:flutter/material.dart';

class AccentBox extends StatelessWidget {
  final Widget child;
  AccentBox({this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        color: Theme.of(context).accentColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }
}
