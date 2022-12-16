import 'package:dio/dio.dart';
import 'package:dokter_app/model/booking_model.dart';

import '../utils.dart';

class BookingService{
  static Future<List<Booking_model>> postDataBooking() async{
    Dio dio = Dio();
    var respone = await Dio().post('$BASE_URL/pasien',
);
    List<Booking_model> book =
    (respone.data['pasien'] as List).map((v) => Booking_model.fromJson(v)).toList();
    return book;
  }
}