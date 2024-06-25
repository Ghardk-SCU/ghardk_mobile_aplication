class ProductModel {
  final int id;
  final String name;
  final String description;
  final double price;
  final int quantity;
  final int rating;
  final int ratingCount;
  String? categoryName;

  ProductModel({
    required this.id,
    required this.name,
    required this.description,
    required this.rating,
    required this.ratingCount,
    required this.price,
    required this.quantity,
    required this.categoryName,
  });

  factory ProductModel.fromJson(json) {
    return ProductModel(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      quantity: json['quantity'],
      price: double.parse(json['price']),
      rating: json['rating'],
      ratingCount: json['rating_count'],
      categoryName: json['category_name'] ?? "Foods",
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'quantity': quantity,
      'price': price.toString(),
      'rating': rating,
      'rating_count': ratingCount,
      'category_name': categoryName,
    };
  }
}
