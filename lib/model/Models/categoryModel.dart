class CategoryModel {
  final int id;
  final String name;
  int? parentCategoryId;
  String? image_url;

  CategoryModel({
    required this.id,
    required this.name,
    this.parentCategoryId,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      id: json['id'],
      name: _capitalizeFirstLetter(json['name']),
      parentCategoryId: json['parent_category_id'],
    );
  }

  static String _capitalizeFirstLetter(String input) {
    if (input.isEmpty) return input;
    return input[0].toUpperCase() + input.substring(1);
  }
}
