import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

class WebHeader extends StatelessWidget {
  final String title;

  const WebHeader({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Title of the header
          Text(
            "Alif Quran Academy",
            style: GoogleFonts.amiri(
              fontSize: 26,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          // Description text and WhatsApp button
          Row(
            children: [
              Text(
                "Got a query?? ",
                style: GoogleFonts.amiri(
                  fontSize: 22,
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  html.window.open("https://wa.me/923706269220", "newtab");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green.shade900, // Button color
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                ),
                child: const Row(
                  children: [
                    SizedBox(width: 8),
                    Text(
                      "Contact Now!!",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
