class CategoryModel {
  final int id;
  final String name;
  int? parentCategoryId; // Nullable parent category ID
  final String createdAt;
  final String updatedAt;

  CategoryModel({
    required this.id,
    required this.name,
    this.parentCategoryId,
    required this.createdAt,
    required this.updatedAt,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      id: json['id'],
      name: _capitalizeFirstLetter(json['name']),
      parentCategoryId: json['parent_category_id'],
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
    );
  }

  static String _capitalizeFirstLetter(String input) {
    if (input.isEmpty) return input;
    return input[0].toUpperCase() + input.substring(1);
  }
}
