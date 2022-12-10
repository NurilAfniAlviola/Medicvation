import 'package:dio/dio.dart';
import 'package:dokter_app/model/umum_model.dart';

class UmumService{
  static Future<List<Umum>> getDataUmum() async{
    print("===== masuk tes umum ===");
    Dio dio = Dio();
    var respone =  await dio
        .get('http://localhost:3000/umum');
    List<Umum> umum =
    (respone.data as List).map((v) => Umum.fromJson(v)).toList();
    print("===== tes umum ===");
    print(umum.toString());
    return umum;
  }
}