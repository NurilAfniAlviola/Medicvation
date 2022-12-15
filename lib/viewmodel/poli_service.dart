import 'package:dio/dio.dart';
import 'package:dokter_app/model/anak_model.dart';
import 'package:dokter_app/model/gigi_model.dart';
import 'package:dokter_app/model/kandungan_model.dart';
import 'package:dokter_app/model/penyakit_dalam_model.dart';
import 'package:dokter_app/model/saraf_model.dart';
import 'package:dokter_app/model/umum_model.dart';

import '../utils.dart';

class PoliService{
  static Future<List<Umum>> getDataUmum() async{
    Dio dio = Dio();
    var respone =  await dio
        .get('$BASE_URL/umum');
    List<Umum> umums =
    (respone.data as List).map((v) => Umum.fromJson(v)).toList();
    return umums;
  }

  static Future<List<Anak>> getDataAnak() async{
    Dio dio = Dio();
    var respone =  await dio
        .get('$BASE_URL/anak');
    List<Anak> anaks =
    (respone.data as List).map((v) => Anak.fromJson(v)).toList();
    return anaks;
  }

  static Future<List<Gigi>> getDataGigi() async{
    Dio dio = Dio();
    var respone =  await dio
        .get('$BASE_URL/gigi');
    List<Gigi> gigis =
    (respone.data as List).map((v) => Gigi.fromJson(v)).toList();
    return gigis;
  }

  static Future<List<Kandungan>> getDataKandungan() async{
    Dio dio = Dio();
    var respone =  await dio
        .get('$BASE_URL/kandungan');
    List<Kandungan> kandungan =
    (respone.data as List).map((v) => Kandungan.fromJson(v)).toList();
    return kandungan;
  }

  static Future<List<PenyakitDalam>> getDataPenyakitdalam() async{
    Dio dio = Dio();
    var respone =  await dio
        .get('$BASE_URL/penyakit_dalam');
    List<PenyakitDalam> pd =
    (respone.data as List).map((v) => PenyakitDalam.fromJson(v)).toList();
    return pd;
  }

  static Future<List<Saraf>> getDataSaraf() async{
    Dio dio = Dio();
    var respone =  await dio
        .get('$BASE_URL/saraf');
    List<Saraf> sarafs =
    (respone.data as List).map((v) => Saraf.fromJson(v)).toList();
    return sarafs;
  }
}