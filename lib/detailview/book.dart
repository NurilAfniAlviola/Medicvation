import 'package:dio/dio.dart';
import 'package:dokter_app/utils.dart';
import 'package:flutter/material.dart';
import 'package:ms_undraw/ms_undraw.dart';

class Booking extends StatefulWidget {
  const Booking({Key? key}) : super(key: key);

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  var polictrl = TextEditingController();
  var dokterctrl = TextEditingController();
  var tanggalctrl = TextEditingController();
  var jamctrl = TextEditingController();
  var teleponctrl = TextEditingController();
  var nama_pasienctrl = TextEditingController();
  var usiactrl = TextEditingController();

  void booking(String poli, dokter, tanggal, jam, telepon, nama_pasien, usia) async {
    try {
      var response = await Dio().post('$BASE_URL/pasien',
          data: {"poli": poli,"dokter": dokter, "tanggal": tanggal,
            "jam": jam, "telepon": telepon, "nama_pasien": nama_pasien,
            "usia": usia});
      if (response.statusCode == 201) {
        showDialog<String>(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              title: Column(
                children: [
                  UnDraw(illustration: UnDrawIllustration.booking, color: Color(0xff6cab36), height: 70,),
                  Text('Doctor Appointment'),
                ],
              ),
              content: SingleChildScrollView(
                child: ListBody(
                  children: const <Widget>[
                    Text('You have successfully made an appointment with the doctor'),
                  ],
                ),
              ),
              actions: <Widget>[
                ElevatedButton(
                  child: const Text('Done'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            )
          );
          child: const Text('Show Dialog');
      } else {
        print("gagal");
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff2a362a),
        centerTitle: true,
        title: Image.asset(
            "assets/img/logo.png",
          width: 150,
        )
      ),

      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 23),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: SingleChildScrollView(
          child: Container(
            height: 800,
            child: Column(
              children: <Widget>[
                Align(
                  child: Column(
                    children: const <Widget>[
                      Text(
                        'Doctor Appointment',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black87,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                      SizedBox(height: 3),
                      Padding(padding: EdgeInsets.only(bottom: 10)),
                    ],
                  ),
                ),
                SizedBox(height: 25),
                TextField(
                  controller: nama_pasienctrl,
                  style: const TextStyle(
                    fontFamily: 'Poppins Light',
                    fontSize: 16,
                  ),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: "Nama",
                    hintText: "Nama",
                    contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                    hintStyle: const TextStyle(
                      fontFamily: 'Poppins Light',
                      fontSize: 16,
                      color: Color(0x38000000),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(bottom: 10)),

                SizedBox(height: 25),
                TextField(
                  controller: usiactrl,
                  style: const TextStyle(
                    fontFamily: 'Poppins Light',
                    fontSize: 16,
                  ),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: "Usia",
                    hintText: "Usia",
                    contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                    hintStyle: const TextStyle(
                      fontFamily: 'Poppins Light',
                      fontSize: 16,
                      color: Color(0x38000000),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(bottom: 10)),

                SizedBox(height: 18),
                TextField(
                  controller: polictrl,
                  style: const TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                  ),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: "poli",
                    hintText: "poli",
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 18),
                    hintStyle: const TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      color: Color(0x38000000),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(bottom: 10)),

                SizedBox(height: 25),
                TextField(
                  controller: dokterctrl,
                  style: const TextStyle(
                    fontFamily: 'Poppins Light',
                    fontSize: 16,
                  ),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: "Dokter",
                    hintText: "Dokter",
                    contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                    hintStyle: const TextStyle(
                      fontFamily: 'Poppins Light',
                      fontSize: 16,
                      color: Color(0x38000000),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(bottom: 10)),

                SizedBox(height: 25),
                TextField(
                  controller: tanggalctrl,
                  style: const TextStyle(
                    fontFamily: 'Poppins Light',
                    fontSize: 16,
                  ),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: "Tanggal",
                    hintText: "Tanggal",
                    contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                    hintStyle: const TextStyle(
                      fontFamily: 'Poppins Light',
                      fontSize: 16,
                      color: Color(0x38000000),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(bottom: 10)),

                SizedBox(height: 25),
                TextField(
                  controller: jamctrl,
                  style: const TextStyle(
                    fontFamily: 'Poppins Light',
                    fontSize: 16,
                  ),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: "Jam",
                    hintText: "Jam",
                    contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                    hintStyle: const TextStyle(
                      fontFamily: 'Poppins Light',
                      fontSize: 16,
                      color: Color(0x38000000),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(bottom: 10)),

                SizedBox(height: 25),
                TextField(
                  controller: teleponctrl,
                  style: const TextStyle(
                    fontFamily: 'Poppins Light',
                    fontSize: 16,
                  ),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: "Telepon",
                    hintText: "Telepon",
                    contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                    hintStyle: const TextStyle(
                      fontFamily: 'Poppins Light',
                      fontSize: 16,
                      color: Color(0x38000000),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),

                const Spacer(),
                ElevatedButton(
                  onPressed: () {

                    if (nama_pasienctrl.text.isEmpty || usiactrl.text.isEmpty || polictrl.text.isEmpty || dokterctrl.text.isEmpty || tanggalctrl.text.isEmpty
                        || jamctrl.text.isEmpty || teleponctrl.text.isEmpty) {
                      final snackBar = SnackBar(
                        duration: const Duration(seconds: 5),
                        content: Text("Harap isi terlebih dahulu"),
                        backgroundColor: Colors.red,
                      );

                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      return;
                    }
                    booking(polictrl.text, dokterctrl.text, tanggalctrl.text, jamctrl.text, teleponctrl.text,
                        nama_pasienctrl.text, usiactrl.text);
                  },
                  child: const Text("Booking",
                      style: TextStyle(
                        fontFamily: 'Poppins Bold',
                        fontSize: 18,
                      )),
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xff6cab36),
                      minimumSize: const Size.fromHeight(55),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      )),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// void submit(BuildContext context, String nama_pasien, String usia, String poli, String dokter, String tanggal, String jam, String telepon) {
//
//
//   AlertDialog alert = AlertDialog(
//     title: Text("Doctor Appointment yang bener"),
//     content: Container(
//       child: Text("You have successfully made an appoinjhfjhfjhftment with the doctor"),
//     ),
//     actions: [
//       TextButton(
//         child: Text('Done'),
//         onPressed: () => Navigator.of(context).pop(),
//       ),
//     ],
//   );
//
//   showDialog(context: context, builder: (context) => alert);
//   return;
// }

