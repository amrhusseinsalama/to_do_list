import 'package:flutter/material.dart';

class ProfilCard extends StatelessWidget {
  const ProfilCard({super.key, required this.title, required this.leading});
  final String title;
  final IconData leading;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      shadowColor: Color.fromRGBO(150, 188, 255, 1),
      margin: EdgeInsets.symmetric(vertical: 10),
      elevation: 5,
      color: Color.fromRGBO(105, 159, 252, 1),
      child: ListTile(
        leading: Icon(leading, color: Colors.white),
        title: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

final List<ProfilCard> data = [
  ProfilCard(title: "E.Mail: amrhusseinsalama@gmail.com", leading: Icons.email_outlined),
  ProfilCard(title: "Phone: 01016248877", leading: Icons.phone_android),
  ProfilCard(title: "Privacy & Security", leading: Icons.security),
  ProfilCard(title: "Edit Profile", leading: Icons.edit),
  ProfilCard(title: "Delete Account", leading: Icons.delete),
  ProfilCard(title: "Logout", leading: Icons.logout)
];
