class UserModel {
  final UserData data;

  UserModel({required this.data});
  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        data: UserData.fromJson(json["data"]),
      );
  Map<String, dynamic> toJson() => {"data": data.toJson()};
}

class UserData {
  bool success;
  int status;
  Data data;
  String message;
  List<dynamic> errors;

  UserData({
    required this.success,
    required this.status,
    required this.data,
    required this.message,
    required this.errors,
  });

  factory UserData.fromJson(Map<String, dynamic> json) => UserData(
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
  int id;
  String token;
  String phone;
  String code;
  dynamic firstName;
  dynamic lastName;
  dynamic middleName;
  dynamic fullName;
  dynamic documentType;
  dynamic selfie;
  dynamic passportGivenDate;
  dynamic passportGivenBy;
  dynamic passportExpireDate;
  dynamic passportFullSerial;
  dynamic passportSerial;
  dynamic passportNumber;
  dynamic passportCode;
  dynamic birthday;
  int isIdentified;
  dynamic gender;
  dynamic genderName;
  dynamic address;

  Data({
    required this.id,
    required this.token,
    required this.phone,
    required this.code,
    required this.firstName,
    required this.lastName,
    required this.middleName,
    required this.fullName,
    required this.documentType,
    required this.selfie,
    required this.passportGivenDate,
    required this.passportGivenBy,
    required this.passportExpireDate,
    required this.passportFullSerial,
    required this.passportSerial,
    required this.passportNumber,
    required this.passportCode,
    required this.birthday,
    required this.isIdentified,
    required this.gender,
    required this.genderName,
    required this.address,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        token: json["token"],
        phone: json["phone"],
        code: json["code"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        middleName: json["middle_name"],
        fullName: json["full_name"],
        documentType: json["document_type"],
        selfie: json["selfie"],
        passportGivenDate: json["passport_given_date"],
        passportGivenBy: json["passport_given_by"],
        passportExpireDate: json["passport_expire_date"],
        passportFullSerial: json["passport_full_serial"],
        passportSerial: json["passport_serial"],
        passportNumber: json["passport_number"],
        passportCode: json["passport_code"],
        birthday: json["birthday"],
        isIdentified: json["is_identified"],
        gender: json["gender"],
        genderName: json["gender_name"],
        address: json["address"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "token": token,
        "phone": phone,
        "code": code,
        "first_name": firstName,
        "last_name": lastName,
        "middle_name": middleName,
        "full_name": fullName,
        "document_type": documentType,
        "selfie": selfie,
        "passport_given_date": passportGivenDate,
        "passport_given_by": passportGivenBy,
        "passport_expire_date": passportExpireDate,
        "passport_full_serial": passportFullSerial,
        "passport_serial": passportSerial,
        "passport_number": passportNumber,
        "passport_code": passportCode,
        "birthday": birthday,
        "is_identified": isIdentified,
        "gender": gender,
        "gender_name": genderName,
        "address": address,
      };
}
