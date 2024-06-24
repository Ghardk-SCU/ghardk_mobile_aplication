class TopRatedSellerModel {
  int id;
  String firstName;
  String lastName;
  String userName;
  String email;
  DateTime dob;
  String role;
  bool active;
  String gender;
  String imageUrl;
  String imageId;
  String description;
  double rating;
  int ratingCount;

  TopRatedSellerModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.userName,
    required this.email,
    required this.dob,
    required this.role,
    required this.active,
    required this.gender,
    required this.imageUrl,
    required this.imageId,
    required this.description,
    required this.rating,
    required this.ratingCount,
  });

  factory TopRatedSellerModel.fromJson(Map<String, dynamic> json) {
    return TopRatedSellerModel(
      id: json['id'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      userName: json['user_name'],
      email: json['email'],
      dob: DateTime.parse(json['dob']),
      role: json['role'],
      active: json['active'],
      gender: json['gender'],
      imageUrl: json['image_url'] ?? "",
      imageId: json['image_id'] ?? "",
      description: json['description'] ?? "",
      rating: (json['rating'] as num).toDouble(),
      ratingCount: json['rating_count'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'first_name': firstName,
      'last_name': lastName,
      'user_name': userName,
      'email': email,
      'dob': dob.toIso8601String(),
      'role': role,
      'active': active,
      'gender': gender,
      'image_url': imageUrl,
      'image_id': imageId,
      'description': description,
      'rating': rating,
      'rating_count': ratingCount,
    };
  }
}
