class RatingModel {
  String? id;
  String? reviewerName;
  String? title;
  String? review;
  double? rating;

  RatingModel({
    this.id,
    this.reviewerName,
    this.title,
    this.review,
    this.rating,
  });

  static List<RatingModel> get ratings => [
        RatingModel(
            reviewerName: 'Ayesha',
            title: 'Excellent Experience',
            review: 'Great lessons for kids!',
            rating: 5.0),
        RatingModel(
            reviewerName: 'Fatima',
            title: 'Perfect for Kids',
            review: 'My daughter enjoys every lesson.',
            rating: 5.0),
        RatingModel(
            reviewerName: 'Zainab',
            title: 'Great for Women',
            review: 'Very comfortable and engaging for females.',
            rating: 4.5),
        RatingModel(
            reviewerName: 'Sana',
            title: 'Wonderful Support',
            review: 'The teachers are supportive and understanding.',
            rating: 5.0),
        RatingModel(
            reviewerName: 'Nadia',
            title: 'Kid-Friendly',
            review: 'My son is improving so much.',
            rating: 4.5),
        RatingModel(
            reviewerName: 'Maryam',
            title: 'Highly Recommended',
            review: 'Great for young learners!',
            rating: 5.0),
        RatingModel(
            reviewerName: 'Amina',
            title: 'Excellent Teachers',
            review: 'The teachers make learning fun.',
            rating: 5.0),
        RatingModel(
            reviewerName: 'Huda',
            title: 'Great for Kids',
            review: 'My kids love the lessons.',
            rating: 4.5),
        RatingModel(
            reviewerName: 'Salma',
            title: 'Amazing Experience',
            review: 'A great environment for learning.',
            rating: 5.0),
        RatingModel(
            reviewerName: 'Layla',
            title: 'Fun for Kids',
            review: 'My kids look forward to classes!',
            rating: 5.0),
      ];
}
