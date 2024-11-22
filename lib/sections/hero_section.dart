import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.7,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/quran1.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned.fill(
          child: Center(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Image.asset(
                    "assets/images/11.png",
                    color: Colors.white,
                    height: 150,
                    width: 500,
                  ),
                ),
                Column(
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
              ],
            ),
          ),
        ),
      ],
    );
  }
}
