import 'package:flutter/material.dart';
import 'package:quran_academy/models/courses_model.dart';

import 'package:quran_academy/widgets/course_detail_card.dart';

class CourseSection extends StatelessWidget {
  const CourseSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<CoursesModel> courses = CoursesModel.courses;
    double screenWidth = MediaQuery.of(context).size.width;

    // number of columns based on the screen size
    int crossAxisCount = 1;
    if (screenWidth >= 1024) {
      crossAxisCount = 4; // Desktop
    } else if (screenWidth >= 600) {
      crossAxisCount = 2; // Tablet
    }

    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: GridView.builder(
          itemCount: courses.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount, // Dynamic column count
            crossAxisSpacing: 16, // Space between columns
            mainAxisSpacing: 16, // Space between rows
            childAspectRatio: 1.0, // Aspect ratio for cards
          ),
          itemBuilder: (context, index) {
            return Center(
              child: CourseTile(course: courses[index]), // Center the cards
            );
          },
        ),
      ),
    );
  }
}
