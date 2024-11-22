import 'package:flutter/material.dart';
import 'package:quran_academy/models/courses_model.dart';

class CourseCard extends StatelessWidget {
  final CoursesModel course;

  const CourseCard({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isMobile = screenWidth < 600;
    bool isTablet = screenWidth >= 600 && screenWidth < 1024;
    bool isDesktop = screenWidth >= 1024;

    return Center(
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: EdgeInsets.all(isMobile ? 8 : 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Course Image
              // ClipRRect(
              //   borderRadius: BorderRadius.circular(8),
              //   child: Image.asset(
              //     course.imageUrl ?? 'assets/images/placeholder.jpg',
              //     height: isMobile ? 120 : (isTablet ? 150 : 200),
              //     fit: BoxFit.cover,
              //   ),
              // ),
              // const SizedBox(height: 12),
              // Course Title and Description
              Text(
                course.title ?? "No Title",
                style: TextStyle(
                  fontSize: isMobile ? 18 : (isTablet ? 20 : 24),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                course.description ?? "No description available.",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: isMobile ? 14 : (isTablet ? 16 : 18),
                ),
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildDetailIconText(Icons.schedule, course.duration),
                  _buildDetailIconText(Icons.star, "${course.rating}"),
                ],
              ),
              const SizedBox(height: 16),
              // Enroll Button
              ElevatedButton(
                onPressed: () {
                  debugPrint("Tapped on ${course.title}");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.greenAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: isMobile ? 10 : (isTablet ? 12 : 14),
                    horizontal: isMobile ? 16 : (isTablet ? 20 : 24),
                  ),
                ),
                child: Text(
                  "Enroll",
                  style:
                      TextStyle(fontSize: isMobile ? 14 : (isTablet ? 16 : 18)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper widget for displaying icon and text
  Widget _buildDetailIconText(IconData icon, String? text) {
    return Row(
      children: [
        Icon(icon, size: 18, color: Colors.teal),
        const SizedBox(width: 6),
        Text(
          text ?? "-",
          style: const TextStyle(fontSize: 14),
        ),
      ],
    );
  }
}
