import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:quran_academy/models/rating_model.dart';

class ReviewWidget extends StatelessWidget {
  final RatingModel rating;

  const ReviewWidget({
    super.key,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    // final rating = RatingModel.rating;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        RatingStars(
          value: rating.rating ?? 0,
          starCount: 5,
          starSize: 20,
          valueLabelVisibility: false,
          maxValue: 5,
          starSpacing: 1,
          maxValueVisibility: false,
          starOffColor: Colors.grey.shade300,
          starColor: Colors.pink.shade300,
          starBuilder: (index, color) => Icon(
            Icons.star,
            color: color,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          rating.title ?? "",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          rating.review ?? "",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.black54,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          rating.reviewerName ?? "",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.black45,
          ),
        ),
      ],
    );
  }
}
