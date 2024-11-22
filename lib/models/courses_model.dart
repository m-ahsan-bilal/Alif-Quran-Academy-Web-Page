class CoursesModel {
  String? title;
  String? description;
  String? duration; // as per the student struggle
  String? level; // basic . intermediate;
  String? imageUrl;
  double? price;
  double? rating;

  CoursesModel({
    this.title,
    this.description,
    this.duration,
    this.level,
    this.imageUrl,
    this.price,
    this.rating,
  });

  static List<CoursesModel> get courses => [
        CoursesModel(
          title: "Tajweed",
          description: "Perfect your Quran recitation.",
          duration: "6 months",
          level: "Beginner",
          imageUrl: "assets/images/tajweed.jpg",
          price: 100.0,
          rating: 4.8,
        ),
        CoursesModel(
          title: "Translation",
          description: "Understand Quran in your language.",
          duration: "4 months",
          level: "Intermediate",
          imageUrl: "assets/images/translation.jpg",
          price: 80.0,
          rating: 4.6,
        ),
        CoursesModel(
          title: "Nazra",
          description: "Read and understand the Quran with clarity.",
          duration: "3 months",
          level: "Beginner",
          imageUrl: "assets/images/nazra.jpg",
          price: 70.0,
          rating: 4.7,
        ),
        CoursesModel(
          title: "Hifz",
          description: "Memorize the Holy Quran.",
          duration: "12 months",
          level: "Advanced",
          imageUrl: "assets/images/hifz.jpg",
          price: 150.0,
          rating: 4.9,
        ),
        CoursesModel(
          title: "Basic Fiqh",
          description: "Learn the Islamic jurisprudence.",
          duration: "5 months",
          level: "Intermediate",
          imageUrl: "assets/images/fiqh.jpg",
          price: 90.0,
          rating: 4.5,
        ),
        CoursesModel(
          title: " 40 Hadith",
          description: "Understand the sayings of the Prophet Muhammad (PBUH).",
          duration: "4 months",
          level: "Intermediate",
          imageUrl: "assets/images/hadith.jpg",
          price: 85.0,
          rating: 4.8,
        ),
        CoursesModel(
          title: "Noorani  Qaida",
          description:
              "The basic Qaida to understand Arabic words and pronunciation before statrt Quran.",
          duration: "3 months",
          level: "Beginner",
          imageUrl: "assets/images/nazra.jpg",
          price: 70.0,
          rating: 4.7,
        ),
      ];
}
