class Brand {
  final String brandimages;
  final String brand;
  final String id;
  final String category;

  const Brand({
    required this.brandimages,
    required this.brand,
    required this.id,
    required this.category,
  });

  factory Brand.fromJson(Map<String, dynamic> json) {
    return Brand(
      brandimages: json['brandimages'],
      brand: json['brand'],
      id: json['id'],
      category: json['category'],
    );
  }
}
