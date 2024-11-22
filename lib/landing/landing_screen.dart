import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quran_academy/models/courses_model.dart';
import 'package:quran_academy/models/quran_card_model.dart';
import 'package:quran_academy/models/rating_model.dart';
import 'package:quran_academy/sections/about.dart';
import 'package:quran_academy/sections/contact_section.dart';
import 'package:quran_academy/sections/hero_section.dart';
import 'package:quran_academy/widgets/ad_card.dart';
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
final List<QuranCardModel> cards = QuranCardModel.cards;

class _LandingPageState extends State<LandingPage> {
  final CarouselSliderController _carouselController =
      CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const WebHeader(
              title: 'Alif Quran Academy',
            ),
            const HeroSection(),
            Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    spacing: 16.0,
                    runSpacing: 16.0,
                    children:
                        cards.map((card) => HoverFlipCard(card: card)).toList(),
                  ),
                ),
              ],
            ),
            const AboutSection(),
            _buildCourseList(),
            const ContactSection(),
            _buildCustomerReviews(),
            const WebFooter(),
          ],
        ),
      ),
    );
  }

  Widget _buildCourseList() {
    return Column(
      children: [
        Text(
          "Available Courses",
          style: GoogleFonts.amiri(
            fontSize: 32,
            color: Colors.green.shade700,
            fontWeight: FontWeight.bold,
          ),
        ),
        Column(
          children:
              courses.map((course) => CourseTile(course: course)).toList(),
        ),
      ],
    );
  }

  Widget _buildCustomerReviews() {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            Text(
              "Testimonials",
              style: GoogleFonts.amiri(
                fontSize: 32,
                color: Colors.green.shade700,
                fontWeight: FontWeight.bold,
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
                height: 160,
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
