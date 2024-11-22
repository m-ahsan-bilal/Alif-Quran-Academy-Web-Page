import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeroSection extends StatelessWidget {
  HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.8,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/quran1.png'),
              fit: BoxFit.cover,
            ),
            // gradient: LinearGradient(
            //   colors: [
            //     Colors.black.withOpacity(0.5),
            //     Colors.transparent,
            //   ], // Optional overlay
            //   begin: Alignment.topCenter,
            //   end: Alignment.bottomCenter,
            // ),
          ),
        ),
        Positioned.fill(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                Text(
                  "Alif Quran Academy",
                  style: GoogleFonts.amiri(
                    fontSize: 36,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Learn Quran Online for Kids and Females",
                  style: GoogleFonts.amiri(
                    fontSize: 24,
                    color: Colors.white70,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                Text(
                  "Private, Female-Only Classes",
                  style: GoogleFonts.amiri(
                    fontSize: 18,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
