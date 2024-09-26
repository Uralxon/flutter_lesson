

class LoginModel {
  bool success;
  int status;
  Data data;
  String message;
  List<dynamic> errors;

  LoginModel({
    required this.success,
    required this.status,
    required this.data,
    required this.message,
    required this.errors,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
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
  String token;
  String phone;

  Data({
    required this.token,
    required this.phone,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    token: json["token"],
    phone: json["phone"],
  );

  Map<String, dynamic> toJson() => {
    "token": token,
    "phone": phone,
  };
}