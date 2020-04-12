import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../models/MenuItem.dart';

class AppDrawer extends StatefulWidget {
  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  List<MenuItem> menuItems = [
    MenuItem(
      title: "Dashboard",
      icon: Icons.dashboard,
      svgIcon: "menu_dashboard",
    ),
    MenuItem(
      title: "Lessons",
      icon: Icons.bookmark,
      svgIcon: "menu_lessons",
    ),
    MenuItem(
      title: "Finance",
      icon: Icons.favorite,
      svgIcon: "menu_finance",
    ),
    MenuItem(
      title: "Students",
      icon: Icons.favorite,
      svgIcon: "menu_students",
    ),
    MenuItem(
      title: "Messages",
      icon: Icons.favorite,
      svgIcon: "menu_messages",
    ),
    MenuItem(
      title: "Reviews",
      icon: Icons.favorite,
      svgIcon: "menu_reviews",
    ),
  ];
  MenuItem selected;

  @override
  void initState() {
    super.initState();
    selected = menuItems[0];
  }

  onTap(MenuItem menuItem) {
    setState(() {
      selected = menuItem;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        // color: Colors.red,
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(vertical: 30),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Image.asset("assets/logo.png", width: 60),
                    SizedBox(width: 10),
                    Text(
                      "owlschool",
                      style: Theme.of(context).textTheme.title,
                    ),
                  ],
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: menuItems.length,
                itemBuilder: (_, ix) {
                  return MenuItemWidget(
                    icon: menuItems[ix].icon,
                    title: menuItems[ix].title,
                    svgIcon: menuItems[ix].svgIcon,
                    active: selected == menuItems[ix],
                    onTap: () => onTap(menuItems[ix]),
                  );
                },
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: 180,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          // color: Colors.red,
                          ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/girlworking.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        color: Theme.of(context).primaryColor.withOpacity(0.15),
                        height: 180,
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      left: 20,
                      child: Text(
                        "Upgrade\nYour plan",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          height: 1.4,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              MenuItemWidget(
                title: "Settings",
                svgIcon: "menu_settings",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuItemWidget extends StatelessWidget {
  final bool active;
  final String title;
  final IconData icon;
  final String svgIcon;
  final Function onTap;

  const MenuItemWidget({
    Key key,
    this.active = false,
    @required this.title,
    this.icon,
    this.onTap,
    this.svgIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        curve: Curves.easeOut,
        duration: Duration(milliseconds: 100),
        margin: EdgeInsets.symmetric(horizontal: 24, vertical: 2),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        decoration: BoxDecoration(
          color: active ? Theme.of(context).primaryColor : Colors.transparent,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Row(
          children: <Widget>[
            if (svgIcon != null)
              SvgPicture.asset(
                "assets/$svgIcon.svg",
                width: 20,
                color: active ? Colors.white : Color(0xFF898d93),
              ),
            if (svgIcon == null)
              Icon(
                icon,
                color: active ? Colors.white : Color(0xFF898d93),
              ),
            SizedBox(width: 25),
            Text(
              title,
              style: TextStyle(
                color: active ? Colors.white : Color(0xFF898d93),
                fontSize: 18,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
