import 'package:flutter/material.dart';

class QuranCardModel {
  final String title;
  final String description;
  final IconData icon;
  final Color color;

  QuranCardModel({
    required this.title,
    required this.description,
    required this.icon,
    required this.color,
  });

  static List<QuranCardModel> get cards => [
        QuranCardModel(
          title: "Desired Timing",
          description:
              "Feeling tired after work? Too busy in the morning? No worries! Just tell us your desired timings.",
          icon: Icons.access_time,
          color: Colors.green,
        ),
        QuranCardModel(
          title: "Free Trial Classes",
          description:
              "Enjoy free trial classes for 3 days and explore our teaching methods.",
          icon: Icons.school,
          color: Colors.purple,
        ),
        QuranCardModel(
          title: "Any Device, Anywhere",
          description:
              "Use the latest tools to access our classes from anywhere.",
          icon: Icons.devices,
          color: Colors.blue,
        ),
        QuranCardModel(
          title: "Individual Sessions",
          description: "We give every individual special attention.",
          icon: Icons.person,
          color: Colors.orange,
        ),
      ];
}
