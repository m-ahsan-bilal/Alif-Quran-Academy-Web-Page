import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.8,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.pink.shade100, Colors.purple.shade50],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        Positioned.fill(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Image.asset('assets/images/teacher.jpeg'),
                // const SizedBox(height: 20),
                // Lottie.asset(
                //   'assets/images/teacher.jpeg',
                //   width: 150,
                //   height: 150,
                //   repeat: true,
                // ),
                const SizedBox(height: 20),
                Text(
                  "Alif Quran Academy",
                  style: GoogleFonts.amiri(
                    fontSize: 36,
                    color: Colors.green.shade700,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // const SizedBox(height: 20),
                Text(
                  "Learn Quran Online for Kids and Females",
                  style: GoogleFonts.amiri(
                    fontSize: 36,
                    color: Colors.green.shade700,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                Text(
                  "Private, Female-Only Classes",
                  style: GoogleFonts.amiri(
                    fontSize: 18,
                    color: Colors.green.shade700,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlue.shade400,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 12),
                  ),
                  child: const Text('Get Started'),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
