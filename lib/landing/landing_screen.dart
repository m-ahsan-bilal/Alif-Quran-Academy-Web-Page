import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quran_academy/models/courses_model.dart';
import 'package:quran_academy/models/rating_model.dart';
import 'package:quran_academy/sections/contact_section.dart';
import 'package:quran_academy/sections/course_section.dart';
import 'package:quran_academy/sections/hero_section.dart';
import 'package:quran_academy/widgets/course_detail_card.dart';
import 'package:quran_academy/widgets/footer.dart';
import 'package:quran_academy/widgets/header.dart';
import 'package:quran_academy/widgets/rating_widget.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

late List<RatingModel> rating;
final List<CoursesModel> courses = CoursesModel.courses;

class _LandingPageState extends State<LandingPage> {
  final CarouselSliderController _carouselController =
      CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Material(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const WebHeader(
              title: 'Alif Quran Academy',
            ),
            HeroSection(),
            const AboutSection(),
            // const SizedBox(height: 700, width: 1000, child: CourseSection()),
            _buildCourseList(),
            const Center(child: ContactSection()),
            _buildCustomerReviews(),
            const WebFooter(),
          ],
        ),
      ),
    );
  }

  Widget _buildCourseList() {
    return Column(
      children: courses.map((course) => CourseTile(course: course)).toList(),
    );
  }

  Widget _buildCustomerReviews() {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            const Text(
              "Reviews",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 20),
            CarouselSlider.builder(
              carouselController: _carouselController,
              itemCount: RatingModel.ratings.length,
              itemBuilder: (context, index, realIndex) {
                return ReviewWidget(
                  rating: RatingModel.ratings[index],
                );
              },
              options: CarouselOptions(
                height: 140,
                viewportFraction: 0.4,
                enlargeCenterPage: true,
                onPageChanged: (index, reason) {
                  setState(() {});
                },
              ),
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    _carouselController.previousPage();
                  },
                  child: const Icon(Icons.arrow_back_ios),
                ),
                const SizedBox(width: 8),
                InkWell(
                  onTap: () {
                    _carouselController.nextPage();
                  },
                  child: const Icon(Icons.arrow_forward_ios),
                ),
              ],
            ),
          ],
        ));
  }
}

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
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
          ElevatedButton(
            onPressed: () {
              // Add navigation or contact functionality here
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.lightBlue.shade600,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 14),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: const Text(
              "Enroll Now",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
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
