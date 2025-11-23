import 'package:flutter/material.dart';
import 'package:to_do_list/presentation/models/drawer_item.dart';

class DrawerTile extends StatelessWidget {
  const DrawerTile({super.key, required this.item});

  final DrawerItem item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      child: ListTile(
        
        onTap: item.onTap,
        trailing: Icon(item.icon, color: Colors.blueAccent),
        title: Text(
          item.title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.blueAccent,
          ),
        ),
      ),
    );
  }
}
