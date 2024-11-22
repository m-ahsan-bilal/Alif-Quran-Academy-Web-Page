import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quran_academy/models/courses_model.dart';

class CourseTile extends StatefulWidget {
  final CoursesModel course;

  const CourseTile({super.key, required this.course});

  @override
  // ignore: library_private_types_in_public_api
  _CourseTileState createState() => _CourseTileState();
}

class _CourseTileState extends State<CourseTile> {
  bool _showDetails = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isMobile = screenWidth < 600;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.green.shade50,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.green.shade200.withOpacity(0.5),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
        border: Border.all(color: Colors.green.shade300, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: isMobile ? 8 : 16),
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                // widget.course.imageUrl ??
                'assets/images/quran3.jpg',
                width: isMobile ? 60 : 80,
                height: isMobile ? 60 : 80,
                fit: BoxFit.cover,
              ),
            ),
            title: Text(
              widget.course.title ?? "No Title",
              style: GoogleFonts.amiri(
                fontSize: isMobile ? 18 : 22,
                color: Colors.black,
                fontWeight: FontWeight.w700,
              ),
            ),
            trailing: IconButton(
              icon: Icon(
                _showDetails
                    ? Icons.keyboard_arrow_up
                    : Icons.keyboard_arrow_down,
                color: Colors.green.shade700,
                size: 28,
              ),
              onPressed: () {
                setState(() {
                  _showDetails = !_showDetails;
                });
              },
            ),
          ),
          if (_showDetails) ...[
            const Divider(color: Colors.green),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: Text(
                widget.course.description ?? "No description available.",
                style: GoogleFonts.amiri(
                  fontSize: 16,
                  color: Colors.black,
                  // fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                widget.course.longDescription ?? "",
                style: GoogleFonts.amiri(
                  fontSize: 16,
                  color: Colors.black,
                  // fontWeight: FontWeight.bold,
                ),
              ),
            ),
            _buildDetailIconText(Icons.schedule, widget.course.duration),
            _buildDetailIconText(
                Icons.star, "${widget.course.rating ?? 'N/A'}"),
            _buildDetailIconText(
                Icons.monetization_on, "\$${widget.course.pricePerMonth ?? 0}"),
            _buildDetailIconText(Icons.class_,
                "${widget.course.classesPerWeek ?? 0} classes/week"),
          ],
        ],
      ),
    );
  }

  Widget _buildDetailIconText(IconData icon, String? text) {
    return Row(
      children: [
        Icon(icon, size: 18, color: Colors.green.shade700),
        const SizedBox(width: 4),
        Text(
          text ?? "-",
          style: GoogleFonts.amiri(
            fontSize: 14,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
