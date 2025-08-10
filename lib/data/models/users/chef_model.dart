class ChefModel {
  final int id;
  final String username;
  final String firstName;
  final String lastName;
  final String profilePhoto;

  ChefModel({
    required this.id,
    required this.username,
    required this.firstName,
    required this.lastName,
    required this.profilePhoto,
  });

  factory ChefModel.fromJson(Map<String, dynamic> json) => ChefModel(
    id: json["id"],
    username: json["username"],
    firstName: json["firstName"],
    lastName: json["lastName"],
    profilePhoto: json["profilePhoto"],
  );
}
