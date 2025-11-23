import 'package:flutter/material.dart';


class DrawerItem {
  final String title;
  Function()? onTap;
  final IconData icon;

  DrawerItem({
    required this.title,
    required this.onTap,
    required this.icon
  });
}


final drawerItems  = [
  DrawerItem(title: "Profile", onTap: (){}, icon: Icons.person),
  DrawerItem(title: "Tasks Lists", onTap: (){}, icon: Icons.menu),
  DrawerItem(title: "Contact Us", onTap: (){}, icon: Icons.phone),
  DrawerItem(title: "Settings", onTap: (){}, icon: Icons.settings),
  DrawerItem(title: "About Us", onTap: (){}, icon: Icons.info_outline),
  DrawerItem(title: "Sign Out", onTap: (){}, icon: Icons.logout_outlined),
];