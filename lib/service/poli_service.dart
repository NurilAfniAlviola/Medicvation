import 'package:dio/dio.dart';
import 'package:dokter_app/model/umum_model.dart';

import '../utils.dart';

class PoliService{
  static Future<List<Umum>> getDataUmum() async{
    print("===== masuk tes umum ===");
    Dio dio = Dio();
    var respone =  await dio
        .get('$BASE_URL/umum');
    List<Umum> umum =
    (respone.data as List).map((v) => Umum.fromJson(v)).toList();
    print("===== tes umum ===");
    print(umum.toString());
    return umum;
  }

  static Future<List<Umum>> getDataPoli() async{
    print("===== masuk tes umum ===");
    Dio dio = Dio();
    var respone =  await dio
        .get('$BASE_URL/poli');
    List<Umum> umum =
    (respone.data as List).map((v) => Umum.fromJson(v)).toList();
    print("===== tes umum ===");
    print(umum.toString());
    return umum;
  }
}