import 'package:flutter/material.dart';
import 'package:to_do_list/presentation/widgets/card.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 35),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/PIKY1494.jpg"),
                  radius: 80,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    "Amr Hussein",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return ProfilCard(
                      leading: data[index].leading,
                      title: data[index].title,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
