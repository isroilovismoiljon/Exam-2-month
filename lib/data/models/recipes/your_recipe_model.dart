class YourRecipeModel {
  final int id;
  final int categoryId;
  final String title;
  final String description;
  final String difficulty;
  final String photo;
  final int timeRequired;
  final double rating;

  YourRecipeModel({
    required this.id,
    required this.categoryId,
    required this.title,
    required this.description,
    required this.difficulty,
    required this.photo,
    required this.timeRequired,
    required this.rating,
  });

  factory YourRecipeModel.fromJson(Map<String, dynamic> json) => YourRecipeModel(
    id: json["id"],
    categoryId: json["categoryId"],
    title: json["title"],
    description: json["description"],
    difficulty: json["difficulty"],
    photo: json["photo"],
    timeRequired: json["timeRequired"],
    rating: json["rating"]?.toDouble(),
  );
}
