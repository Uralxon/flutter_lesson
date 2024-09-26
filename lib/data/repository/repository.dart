import 'package:dio/dio.dart';
import 'package:probox_clone1/model/banners_model.dart';
import 'package:probox_clone1/model/login_model.dart';
import 'package:probox_clone1/model/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../model/product_model.dart';

class AuthRepository {
  final Dio dio = Dio();
  Future<LoginModel> login(
      {required String phone, required String code}) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final Response response =
        await dio.post('https://api.probox.uz/api/v1/clients/send-code', data: {
      "phone": phone,
      "mobile_code": code,
    });
    final LoginModel users = LoginModel.fromJson(response.data);
    prefs.setString('token', users.data.token ?? "");
    return users;
  }
}

class UserRepository {
  final Dio dio = Dio();
  Future<UserModel> getUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final Response response = await dio.get(
        'https://api.probox.uz/api/v1/clients/info',
        options: Options(headers: {
          'Authorization':
              'Bearer diTu3RPQoU0zWxSA-Lo3AlbpogSIFtUwTuKehf3NN9MJaysJ7i'
        }));
    return UserModel.fromJson(response.data);
  }
}

class BannersRepository {
  final Dio dio = Dio();
  Future<BannersModel> get() async {
    final Response response=await dio.get('https://api.probox.uz/api/v1/banners',
    );
    return BannersModel.fromJson(response.data);
  }
}

class ProductRepository{
  final Dio dio= Dio();
  Future<ProductModel> getProduct() async{
    final Response response= await dio.get('https://api.probox.uz/api/v1/products',);
    return response.data;
  }
}
