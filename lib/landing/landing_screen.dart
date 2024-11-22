import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:quran_academy/models/rating_model.dart';
import 'package:quran_academy/sections/contact_section.dart';
import 'package:quran_academy/sections/course_section.dart';
import 'package:quran_academy/sections/hero_section.dart';
import 'package:quran_academy/widgets/footer.dart';
import 'package:quran_academy/widgets/header.dart';
import 'package:quran_academy/widgets/rating_widget.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

late List<RatingModel> rating;

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
            const AboutSection(),
            const SizedBox(height: 1500, width: 1000, child: CourseSection()),
            const Center(child: ContactSection()),
            _buildCustomerReviews(),
            const WebFooter(),
          ],
        ),
      ),
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
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text(
            "About Our Academy",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            "Our academy offers comprehensive Quran learning programs for females. Whether you want to memorize the Quran, understand its meaning, or perfect your recitation, we have courses designed for every stage of your Quran journey.",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
