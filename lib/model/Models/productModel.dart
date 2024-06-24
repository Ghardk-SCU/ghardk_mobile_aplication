class ProductModel {
  final String name;
  final String description;
  int? categoryId;
  final String price;
  final int quantity;

  ProductModel({
    required this.name,
    required this.description,
    required this.categoryId,
    required this.price,
    required this.quantity,
  });

  factory ProductModel.fromJson(json) {
    return ProductModel(
      name: json['name'],
      description: json['description'],
      categoryId: json['category_id'] ?? 1,
      price: json['price'],
      quantity: json['quantity'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'description': description,
      'category_id': categoryId,
      'price': price,
      'quantity': quantity,
    };
  }
}
