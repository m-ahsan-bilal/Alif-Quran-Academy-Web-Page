import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quran_academy/widgets/enroll_button.dart';
import 'dart:html' as html;

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "About Alif Quran Academy",
            style: GoogleFonts.amiri(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.green.shade700,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 15),
          Text(
            "Nurturing Faith, Knowledge, and Character.",
            style: GoogleFonts.amiri(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: Colors.grey.shade700,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          Text(
            "At Alif Quran Academy, we believe in the transformative power of the Quran. Our mission is to provide a nurturing environment where learners of all ages, especially children and women, can grow spiritually, intellectually, and emotionally. Our academy offers structured courses designed to cater to different learning needs and levels, ensuring a personalized and enriching experience.",
            style: GoogleFonts.roboto(
              fontSize: 16,
              height: 1.6,
              color: Colors.black87,
            ),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 20),
          _buildFeature(
            icon: Icons.book,
            title: "Comprehensive Courses",
            description:
                "From Tajweed to Tafseer, our courses cover every aspect of Quranic studies. Learn to recite, understand, and memorize the Quran with precision and love.",
          ),
          _buildFeature(
            icon: Icons.person_outline,
            title: "Qualified Female Teachers",
            description:
                "Our teachers are highly qualified, experienced, and dedicated to providing personalized attention. They create a safe and supportive learning environment for all students.",
          ),
          _buildFeature(
            icon: Icons.videocam,
            title: "Interactive Online Classes",
            description:
                "Join live, interactive sessions from the comfort of your home. Our online platform ensures that you have access to quality education regardless of your location.",
          ),
          _buildFeature(
            icon: Icons.support_agent,
            title: "Dedicated Support",
            description:
                "We offer continuous support to ensure a smooth learning experience. Our team is always available to assist you with any queries or challenges you may face.",
          ),
          const SizedBox(height: 30),
          EnrollButton(
            onTap: () {
              html.window.open("https://wa.me/923706269220", "newtab");
            },
            tiTle: 'Enroll',
          ),
        ],
      ),
    );
  }

  Widget _buildFeature(
      {required IconData icon,
      required String title,
      required String description}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 32, color: Colors.green.shade700),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.amiri(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.green.shade700,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
