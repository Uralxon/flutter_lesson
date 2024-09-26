// To parse this JSON data, do
//
//     final categorieModel = categorieModelFromJson(jsonString);

import 'dart:convert';

CategorieModel categorieModelFromJson(String str) => CategorieModel.fromJson(json.decode(str));

String categorieModelToJson(CategorieModel data) => json.encode(data.toJson());

class CategorieModel {
  bool success;
  int status;
  Data data;
  String message;
  List<dynamic> errors;

  CategorieModel({
    required this.success,
    required this.status,
    required this.data,
    required this.message,
    required this.errors,
  });

  factory CategorieModel.fromJson(Map<String, dynamic> json) => CategorieModel(
    success: json["success"],
    status: json["status"],
    data: Data.fromJson(json["data"]),
    message: json["message"],
    errors: List<dynamic>.from(json["errors"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "status": status,
    "data": data.toJson(),
    "message": message,
    "errors": List<dynamic>.from(errors.map((x) => x)),
  };
}

class Data {
  List<Item> items;
  Links links;
  Meta meta;

  Data({
    required this.items,
    required this.links,
    required this.meta,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
    links: Links.fromJson(json["_links"]),
    meta: Meta.fromJson(json["_meta"]),
  );

  Map<String, dynamic> toJson() => {
    "items": List<dynamic>.from(items.map((x) => x.toJson())),
    "_links": links.toJson(),
    "_meta": meta.toJson(),
  };
}

class Item {
  int id;
  String slug;
  String name;
  String image;

  Item({
    required this.id,
    required this.slug,
    required this.name,
    required this.image,
  });

  factory Item.fromJson(Map<String, dynamic> json) => Item(
    id: json["id"],
    slug: json["slug"],
    name: json["name"],
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "slug": slug,
    "name": name,
    "image": image,
  };
}

class Links {
  First self;
  First first;
  First last;

  Links({
    required this.self,
    required this.first,
    required this.last,
  });

  factory Links.fromJson(Map<String, dynamic> json) => Links(
    self: First.fromJson(json["self"]),
    first: First.fromJson(json["first"]),
    last: First.fromJson(json["last"]),
  );

  Map<String, dynamic> toJson() => {
    "self": self.toJson(),
    "first": first.toJson(),
    "last": last.toJson(),
  };
}

class First {
  String href;

  First({
    required this.href,
  });

  factory First.fromJson(Map<String, dynamic> json) => First(
    href: json["href"],
  );

  Map<String, dynamic> toJson() => {
    "href": href,
  };
}

class Meta {
  int totalCount;
  int pageCount;
  int currentPage;
  int perPage;

  Meta({
    required this.totalCount,
    required this.pageCount,
    required this.currentPage,
    required this.perPage,
  });

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
    totalCount: json["totalCount"],
    pageCount: json["pageCount"],
    currentPage: json["currentPage"],
    perPage: json["perPage"],
  );

  Map<String, dynamic> toJson() => {
    "totalCount": totalCount,
    "pageCount": pageCount,
    "currentPage": currentPage,
    "perPage": perPage,
  };
}
