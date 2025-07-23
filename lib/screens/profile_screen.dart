import 'package:flutter/material.dart';
import 'package:galery_app/data/profile_data.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 24),
          CircleAvatar(radius: 100, backgroundImage: AssetImage(kaya.imageUrl)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              children: [
                const SizedBox(height: 24.0),
                Text(kaya.name, style: TextStyle(fontSize: 40.0)),
                Text(
                  kaya.profession,
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 24),
                Text(
                  kaya.text,
                  style: TextStyle(fontSize: 20.0),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 24.0),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
