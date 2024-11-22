import 'package:flutter/material.dart';
import 'package:quran_academy/models/courses_model.dart';

class CourseTile extends StatelessWidget {
  final CoursesModel course;

  const CourseTile({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isMobile = screenWidth < 600;

    return ListTile(
      contentPadding: EdgeInsets.all(isMobile ? 8 : 16),
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.asset(
          course.imageUrl ?? 'assets/images/placeholder.jpg',
          width: isMobile ? 60 : 80,
          height: isMobile ? 60 : 80,
          fit: BoxFit.cover,
        ),
      ),
      title: Text(
        course.title ?? "No Title",
        style: TextStyle(
          fontSize: isMobile ? 18 : 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 4),
          Text(
            course.description ?? "No description available.",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildDetailIconText(Icons.schedule, course.duration),
              _buildDetailIconText(Icons.star, "${course.rating}"),
            ],
          ),
        ],
      ),
      onTap: () {
        // Add navigation or functionality here if needed
      },
    );
  }

  Widget _buildDetailIconText(IconData icon, String? text) {
    return Row(
      children: [
        Icon(icon, size: 18, color: Colors.teal),
        const SizedBox(width: 4),
        Text(
          text ?? "-",
          style: const TextStyle(fontSize: 14),
        ),
      ],
    );
  }
}
