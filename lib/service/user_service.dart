import 'package:dio/dio.dart';
import 'package:dokter_app/model/user_model.dart';

class UserService{
  static Future<List<User>> getDataUser() async{
    Dio dio = Dio();
    var respone =  await dio
        .get('http://localhost:3000/user');
    List<User> users =
    (respone.data['user'] as List).map((v) => User.fromJson(v)).toList();
    return users;
  }
}