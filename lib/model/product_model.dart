// To parse this JSON data, do
//
//     final productModel = productModelFromJson(jsonString);

import 'dart:convert';

List<ProductModel> productModelFromJson(String str) => List<ProductModel>.from(json.decode(str).map((x) => ProductModel.fromJson(x)));

String productModelToJson(List<ProductModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductModel {
  int id;
  String slug;
  int categoryId;
  int brandId;
  int status;
  dynamic metaTitle;
  dynamic metaDescription;
  dynamic metaKeywords;
  int createdAt;
  int updatedAt;
  int createdBy;
  int updatedBy;
  int weight;
  double height;
  double width;
  double length;

  ProductModel({
    required this.id,
    required this.slug,
    required this.categoryId,
    required this.brandId,
    required this.status,
    required this.metaTitle,
    required this.metaDescription,
    required this.metaKeywords,
    required this.createdAt,
    required this.updatedAt,
    required this.createdBy,
    required this.updatedBy,
    required this.weight,
    required this.height,
    required this.width,
    required this.length,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
    id: json["id"],
    slug: json["slug"],
    categoryId: json["category_id"],
    brandId: json["brand_id"],
    status: json["status"],
    metaTitle: json["meta_title"],
    metaDescription: json["meta_description"],
    metaKeywords: json["meta_keywords"],
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
    createdBy: json["created_by"],
    updatedBy: json["updated_by"],
    weight: json["weight"],
    height: json["height"]?.toDouble(),
    width: json["width"]?.toDouble(),
    length: json["length"]?.toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "slug": slug,
    "category_id": categoryId,
    "brand_id": brandId,
    "status": status,
    "meta_title": metaTitle,
    "meta_description": metaDescription,
    "meta_keywords": metaKeywords,
    "created_at": createdAt,
    "updated_at": updatedAt,
    "created_by": createdBy,
    "updated_by": updatedBy,
    "weight": weight,
    "height": height,
    "width": width,
    "length": length,
  };
}
