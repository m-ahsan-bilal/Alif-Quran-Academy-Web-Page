class CoursesModel {
  String? title;
  String? description;
  String? duration; // Flexible duration based on student's pace
  String? imageUrl;
  double? pricePerMonth; // Price per month for the course
  int? classesPerWeek; // Number of classes per week (e.g., 4 days per week)
  String? flexibleClassSchedule; // Flexible class timing description
  String? longDescription; // Detailed description of the course
  double? rating; // Course rating
  String? courseDetails; // Additional details (like duain, kalimas, etc.)

  CoursesModel({
    this.title,
    this.description,
    this.duration,
    this.imageUrl,
    this.pricePerMonth,
    this.classesPerWeek,
    this.flexibleClassSchedule,
    this.longDescription,
    this.rating,
    this.courseDetails,
  });

  // Sample courses list
  static List<CoursesModel> get courses => [
        CoursesModel(
          title: "Tajweed",
          description:
              "Perfect your Quran recitation with clear and accurate pronunciation.",
          duration: "Custom duration, based on student's progress and schedule",
          imageUrl: "assets/images/tajweed.jpg",
          pricePerMonth: 100.0,
          classesPerWeek: 4, // Example of 4 days per week
          flexibleClassSchedule:
              "Flexible timings, student can choose based on availability.",
          longDescription:
              "In this course, students will learn the rules of Tajweed to ensure proper Quran recitation, focusing on accurate pronunciation and understanding of the phonetic rules.",
          rating: 4.8,
          courseDetails:
              "Learn the phonetics and pronunciation rules of the Quran. Covers different types of tajweed rules for proper recitation.",
        ),
        CoursesModel(
          title: "Translation",
          description: "Understand Quran in your native language.",
          duration: "Custom duration, based on student's pace and schedule",
          imageUrl: "assets/images/translation.jpg",
          pricePerMonth: 80.0,
          classesPerWeek: 4, // Example of 4 days per week
          flexibleClassSchedule:
              "Classes can be scheduled based on the student's convenience.",
          longDescription:
              "This course will guide students to translate the Quranic text into their native language, providing a deeper understanding of its meaning and teachings.",
          rating: 4.6,
          courseDetails:
              "Understand the deeper meaning of Quranic verses with translation techniques. Focuses on comprehension and language skills.",
        ),
        CoursesModel(
          title: "Nazra",
          description: "Read and understand the Quran with clarity.",
          duration: "Custom duration, based on student's pace and schedule",
          imageUrl: "assets/images/nazra.jpg",
          pricePerMonth: 70.0,
          classesPerWeek: 4, // Example of 4 days per week
          flexibleClassSchedule:
              "Flexible timing based on student preference, can be adjusted during the week.",
          longDescription:
              "This course helps students to read the Quran clearly and accurately, focusing on proper Arabic script and pronunciation skills.",
          rating: 4.7,
          courseDetails:
              "Perfect your reading skills with a focus on the clarity and accuracy of Quranic words and sentences.",
        ),
        CoursesModel(
          title: "Hifz",
          description: "Memorize the Holy Quran.",
          duration:
              "Custom duration, based on student's memorization speed and review schedule",
          imageUrl: "assets/images/hifz.jpg",
          pricePerMonth: 150.0,
          classesPerWeek: 4, // Example of 4 days per week
          flexibleClassSchedule:
              "Flexible, students can choose time for memorization and review.",
          longDescription:
              "This course focuses on memorizing the entire Quran, with personalized strategies to help students succeed at their own pace.",
          rating: 4.9,
          courseDetails:
              "Focuses on memorization and review of Quranic verses. Includes techniques for easier retention and revision.",
        ),
        CoursesModel(
          title: "Basic Fiqh",
          description: "Learn the basics of Islamic jurisprudence.",
          duration: "Custom duration, based on student's learning pace",
          imageUrl: "assets/images/fiqh.jpg",
          pricePerMonth: 90.0,
          classesPerWeek: 4, // Example of 4 days per week
          flexibleClassSchedule:
              "Flexible, students can adjust timings according to availability.",
          longDescription:
              "This course introduces students to Islamic law, covering personal matters, family law, and basic legal principles in Islam.",
          rating: 4.5,
          courseDetails:
              "Gain an understanding of Islamic law and its applications in daily life, including basic principles of personal and family law.",
        ),
        CoursesModel(
          title: "40 Hadith",
          description:
              "Understand and reflect on the sayings of the Prophet Muhammad (PBUH).",
          duration: "Custom duration, based on student's pace",
          imageUrl: "assets/images/hadith.jpg",
          pricePerMonth: 85.0,
          classesPerWeek: 4, // Example of 4 days per week
          flexibleClassSchedule:
              "Choose timings based on your convenience and schedule.",
          longDescription:
              "This course focuses on studying the 40 Hadiths, key teachings of Prophet Muhammad (PBUH), and their relevance to daily life and Islamic practice.",
          rating: 4.8,
          courseDetails:
              "Study the key Hadiths of Prophet Muhammad (PBUH), learning their meanings, significance, and practical applications in life.",
        ),
        CoursesModel(
          title: "Noorani Qaida",
          description:
              "Learn the basics of Arabic pronunciation and recitation.",
          duration: "Custom duration, based on student's progress",
          imageUrl: "assets/images/nazra.jpg",
          pricePerMonth: 70.0,
          classesPerWeek: 4, // Example of 4 days per week
          flexibleClassSchedule:
              "Flexible timings for the students to fit the class into their schedule.",
          longDescription:
              "This course teaches the Noorani Qaida, the foundational book for learning proper Arabic pronunciation, which is essential for Quranic recitation.",
          rating: 4.7,
          courseDetails:
              "Master the Arabic alphabet, pronunciation, and basic Quranic recitation rules to understand the language before starting Quran.",
        ),
        // New Course: Masnoon Duain
        CoursesModel(
          title: "Masnoon Duain",
          description:
              "Learn the six Kalimas, Namaz Duain, and other essential supplications.",
          duration: "Custom duration, based on student's pace",
          imageUrl: "assets/images/masnoon_duain.jpg",
          pricePerMonth: 75.0,
          classesPerWeek: 4,
          flexibleClassSchedule:
              "Choose flexible timings based on your convenience.",
          longDescription:
              "This course includes learning the six Kalimas, important Duain for Namaz, and other key supplications that are part of everyday Muslim life. The course focuses on the proper pronunciation and understanding of these prayers.",
          rating: 4.8,
          courseDetails:
              "Learn the six Kalimas and essential supplications for Namaz, focusing on pronunciation, meaning, and their significance in daily worship.",
        ),
      ];
}
