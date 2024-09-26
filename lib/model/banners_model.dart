
// To parse this JSON data, do
//
//     final bannersModel = bannersModelFromJson(jsonString);

import 'dart:convert';

BannersModel bannersModelFromJson(String str) => BannersModel.fromJson(json.decode(str));

String bannersModelToJson(BannersModel data) => json.encode(data.toJson());


class BannersModel {
 final bool? success;
 final int status;
 final Data data;
 final String message;
 final List<dynamic> errors;

  BannersModel({
    required this.success,
    required this.status,
    required this.data,
    required this.message,
    required this.errors,
  });

  factory BannersModel.fromJson(Map<String, dynamic> json) => BannersModel(
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
 final List<Item> items;
 final Links links;
 final Meta meta;

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
 final int id;
 final String path;
 final String title;
 final String description;

  Item({
    required this.id,
    required this.path,
    required this.title,
    required this.description,
  });

  factory Item.fromJson(Map<String, dynamic> json) => Item(
    id: json["id"],
    path: json["path"],
    title: json["title"],
    description: json["description"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "path": path,
    "title": title,
    "description": description,
  };
}

class Links {
 final First self;
 final First first;
 final First last;

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
 final String href;

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
 final int totalCount;
 final int pageCount;
 final int currentPage;
 final int perPage;

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
