class Booking_model{
  final String nama_pasien;
  final String usia;
  final String poli;
  final String dokter;
  final String tanggal;
  final String jam;
  final String telepon;

  Booking_model({
    required this.nama_pasien,
    required this.usia,
    required this.poli,
    required this.dokter,
    required this.tanggal,
    required this.jam,
    required this.telepon});

  factory Booking_model.fromJson(Map map) {
    return Booking_model(
        nama_pasien: map['nama_pasien'],
        usia: map['usia'],
        poli: map['poli'],
        dokter: map['dokter'],
        jam: map['jam'],
        tanggal: map['tanggal'],
        telepon: map['telepon']);
  }
}