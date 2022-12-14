import 'package:dio/dio.dart';
import 'package:dokter_app/model/user_model.dart';

import '../utils.dart';

class UserService{
  static Future<List<User>> getDataUser() async{
    Dio dio = Dio();
    var respone =  await dio
        .get('$BASE_URL/user');
    List<User> users =
    (respone.data['user'] as List).map((v) => User.fromJson(v)).toList();
    return users;
  }
}