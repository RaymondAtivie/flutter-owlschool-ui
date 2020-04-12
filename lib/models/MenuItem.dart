import 'package:flutter/material.dart';

class MenuItem {
  String title;
  IconData icon;
  final String svgIcon;

  MenuItem({
    @required this.title,
    this.icon,
    this.svgIcon,
  });
}
