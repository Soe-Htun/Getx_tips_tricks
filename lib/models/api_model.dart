import 'dart:convert';

List<ProductList> productListFromJson(String str) => List<ProductList>.from(json.decode(str).map((x) => ProductList.fromJson(x)));

String productListToJson(List<ProductList> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductList {
    ProductList({
      required this.albumId,
      required this.id,
      required this.title,
      required this.url,
      required this.thumbnailUrl,
    });

    int albumId;
    int id;
    String title;
    String url;
    String thumbnailUrl;

    factory ProductList.fromJson(Map<String, dynamic> json) => ProductList(
        albumId: json["albumId"],
        id: json["id"],
        title: json["title"],
        url: json["url"],
        thumbnailUrl: json["thumbnailUrl"],
    );

    Map<String, dynamic> toJson() => {
        "albumId": albumId,
        "id": id,
        "title": title,
        "url": url,
        "thumbnailUrl": thumbnailUrl,
    };
}
