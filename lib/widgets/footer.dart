import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';

// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

class WebFooter extends StatelessWidget {
  const WebFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey.shade800,
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Footer Content
          const Text(
            "Contact Us",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const Icon(Icons.email, color: Colors.white, size: 16),
              const SizedBox(width: 8),
              Text(
                "alifquranacademy@gmail.com",
                style: TextStyle(color: Colors.grey.shade300),
              ),
              // Image.asset(
              //   "assets/images/hadees2.png",
              //   height: 200,
              //   width: 700,
              // ),
              FlutterSocialButton(
                onTap: () {
                  html.window.open("https://instagram.com", "newtab");
                },
                buttonType: ButtonType.instagram,
                mini: true,
                iconSize: 12,
              ),
              FlutterSocialButton(
                onTap: () {
                  html.window.open("https://wa.me/923706269220", "newtab");
                },
                buttonType: ButtonType.whatsapp,
                mini: true,
                iconSize: 12,
              ),
              FlutterSocialButton(
                onTap: () {
                  html.window.open("https://www.facebook.com", "newtab");
                },
                buttonType: ButtonType.facebook,
                mini: true,
                iconSize: 12,
              )
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              const Icon(Icons.phone, color: Colors.white, size: 16),
              const SizedBox(width: 8),
              Text(
                "+92-3706269220",
                style: TextStyle(color: Colors.grey.shade300),
              ),
            ],
          ),
          const SizedBox(height: 20),
          const Divider(color: Colors.grey),
          const SizedBox(height: 10),
          // Footer Bottom
          const Center(
            child: Text(
              "© 2024 Alif Quran Academy",
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
