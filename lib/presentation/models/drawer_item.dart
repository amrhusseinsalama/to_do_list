import 'package:flutter/material.dart';
import 'package:to_do_list/presentation/screens/profile_screen.dart';

class DrawerItem {
  final String title;
  final void Function(BuildContext context)? onTap;
  final IconData leading;
  IconData trailing;

  DrawerItem({
    required this.title,
    required this.onTap,
    required this.leading,
    this.trailing = Icons.keyboard_arrow_right,
  });
}

final drawerItems = [
  DrawerItem(
    title: "Profile",
    onTap: (context) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ProfileScreen()),
      );
    },
    leading: Icons.person,
  ),
  DrawerItem(title: "Tasks Lists", onTap: (context) {}, leading: Icons.menu),
  DrawerItem(title: "Contact Us", onTap: (context) {}, leading: Icons.phone),
  DrawerItem(title: "Settings", onTap: (context) {}, leading: Icons.settings),
  DrawerItem(
    title: "About Us",
    onTap: (context) {},
    leading: Icons.info_outline,
  ),
  DrawerItem(
    title: "Sign Out",
    onTap: (context) {},
    leading: Icons.logout_outlined,
  ),
];
