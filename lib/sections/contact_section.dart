import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Contact Alif Quran Academy",
              style: GoogleFonts.amiri(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.green.shade700,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 15),
            Text(
              "We'd love to hear from you! Whether you have questions, feedback, or you'd like to get started with our courses, feel free to reach out.",
              style: GoogleFonts.roboto(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.grey.shade700,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.phone, color: Colors.green.shade700, size: 32),
                const SizedBox(width: 10),
                Text(
                  "+92-3706269220",
                  style: GoogleFonts.roboto(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.green.shade700,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.email, color: Colors.green.shade700, size: 32),
                const SizedBox(width: 10),
                Text(
                  "alifquranacademy@gmail.com",
                  style: GoogleFonts.roboto(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.green.shade700,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.location_on, color: Colors.green.shade700, size: 32),
                const SizedBox(width: 10),
                Text(
                  "Lahore, Pakistan",
                  style: GoogleFonts.roboto(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.green.shade700,
                  ),
                ),
              ],
            ),
            // const SizedBox(height: 30),
            // Text(
            //   "Leave us a Message",
            //   style: GoogleFonts.amiri(
            //     fontSize: 24,
            //     fontWeight: FontWeight.bold,
            //     color: Colors.green.shade700,
            //   ),
            // ),
            const SizedBox(height: 20),
            // _buildContactForm(),
          ],
        ),
      ),
    );
  }
}
