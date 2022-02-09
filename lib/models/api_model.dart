import 'dart:convert';

List<ProductList> productListFromJson(String str) => List<ProductList>.from(json.decode(str).map((x) => ProductList.fromJson(x)));

String productListToJson(List<ProductList> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductList {
    ProductList({
      required this.id,
      required this.title,
      required this.description,
      required this.price,
      required this.image,
      // required this.category,
      // required this.rating
    });

    int id;
    String title;
    String description;
    double price;
    String image;
    // Category category;
    // String rating;

    factory ProductList.fromJson(Map<String, dynamic> json) => ProductList(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        price: json["price"],
        image: json["image"],
        // category: json["category"],
        // rating: json["rating"]
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": description,
        "price": price,
        "image": image,
        // "category": category,
        // "rating": rating
    };
}
