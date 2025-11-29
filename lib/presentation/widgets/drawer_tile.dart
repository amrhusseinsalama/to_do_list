import 'package:flutter/material.dart';
import 'package:to_do_list/presentation/models/drawer_item.dart';

class DrawerTile extends StatelessWidget {
  const DrawerTile({super.key, required this.item});

  final DrawerItem item;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(item.leading, color: Colors.blueAccent),
          onTap: () => item.onTap?.call(context),
          trailing: Icon(item.trailing,color: Colors.blueAccent),
          title: Text(
            item.title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent,
            ),
          ),
        ),
        Divider(thickness: 0.8,)
      ],
    );
  }
}
