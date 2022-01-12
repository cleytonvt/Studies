class Filme {
  final String? id;
  final String imageUrl;
  final String title;
  final String genre;
  final String ageRange;
  final String duraction;
  final double score;
  final String description;
  final String year;

  Filme(
      {this.id,
      required this.imageUrl,
      required this.title,
      required this.genre,
      required this.ageRange,
      required this.duraction,
      required this.score,
      required this.description,
      required this.year});
}
