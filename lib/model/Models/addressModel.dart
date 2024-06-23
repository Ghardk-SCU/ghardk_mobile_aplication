class AddressModel {
  final int id;
  final int country_id;
  final String city;
  final String description;
  final String streetName;
  final String postalCode;
  final String country;

  AddressModel(
      {required this.country_id,
      required this.city,
      required this.id,
      required this.country,
      required this.description,
      required this.streetName,
      required this.postalCode});

  factory AddressModel.fromJson(json) {
    return AddressModel(
      id: json['id'] ?? 0,
      country_id: json[''] ?? 1,
      city: json['city'] ?? "",
      country: json['country'] ?? "",
      description: json['description'] ?? "",
      streetName: json['street_name'] ?? "",
      postalCode: json['postal_code'] ?? "",
    );
  }
}

class countryModel {
  final int id;
  final String name;
  final String code;

  countryModel({required this.id, required this.name, required this.code});
  factory countryModel.fromJson(json) {
    return countryModel(
      id: json['id'],
      name: json['name'],
      code: json['code'],
    );
  }
}
