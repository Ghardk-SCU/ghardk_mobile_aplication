class ProductOrderModel {
  final int id;
  final int quantity;
  final String totalPrice;
  final int productItemId;
  final String name;
  final String productPrice;
  final String description;
  final String vendorFirstName;
  final String vendorLastName;
  final String vendorEmail;
  final DateTime createdAt;
  final DateTime updatedAt;
  final List<String> images;

  ProductOrderModel({
    required this.id,
    required this.quantity,
    required this.totalPrice,
    required this.productItemId,
    required this.name,
    required this.productPrice,
    required this.description,
    required this.vendorFirstName,
    required this.vendorLastName,
    required this.vendorEmail,
    required this.createdAt,
    required this.updatedAt,
    required this.images,
  });

  factory ProductOrderModel.fromJson(json) {
    return ProductOrderModel(
      id: json['id'],
      quantity: json['quantity'],
      totalPrice: json['total_price'],
      productItemId: json['product_item_id'],
      name: json['name'],
      productPrice: json['product_price'],
      description: json['description'],
      vendorFirstName: json['vendor_first_name'],
      vendorLastName: json['vendor_last_name'],
      vendorEmail: json['vendor_email'],
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
      images: List<String>.from(json['images']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'quantity': quantity,
      'total_price': totalPrice,
      'product_item_id': productItemId,
      'name': name,
      'product_price': productPrice,
      'description': description,
      'vendor_first_name': vendorFirstName,
      'vendor_last_name': vendorLastName,
      'vendor_email': vendorEmail,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
      'images': images,
    };
  }
}
