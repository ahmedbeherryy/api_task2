class GetAllProductModel {
  late int total;
  late int limit;
  late List<ProductModel> products;

  GetAllProductModel.fromJson(Map<String, dynamic> json) {
    total = json["total"] ?? 0;
    limit = json["limit"] ?? 0;

    if (json["products"] != null) {
      var productList = json["products"] as List;
      products = productList
          .map((productJson) => ProductModel.fromJson(productJson))
          .toList();
    } else {
      products = [];
    }
  }
}

class ProductModel {
  late int id;
  late String title;
  late String description;
  late double price;
  late double discountPercentage;
  late double rating;
  late int stock;
  late String brand;
  late String category;
  late String thumbnail;
  late List<String> images;

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json["id"] as int? ?? 0;
    title = json["title"] as String? ?? "";
    description = json["description"] as String? ?? "";
    price = (json["price"] as num? ?? 0.0).toDouble();
    discountPercentage = (json["discountPercentage"] as num? ?? 0.0).toDouble();
    rating = (json["rating"] as num? ?? 0.0).toDouble();
    stock = json["stock"] as int? ?? 0;
    brand = json["brand"] as String? ?? "";
    category = json["category"] as String? ?? "";
    thumbnail = json["thumbnail"] as String? ?? "";
    images = (json["images"] as List<dynamic>?)
        ?.map((image) => image as String)
        .toList() ??
        [];
  }
}