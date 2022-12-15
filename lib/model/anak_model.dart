class Anak{
  final String poli;
  final String image;
  final String nama;
  final String hari;
  final String jam;
  final String pasien;
  final String pengalaman;
  final String review;
  final String about;
  final String view;

  Anak({
    required this.poli,
    required this.image,
    required this.nama,
    required this.hari,
    required this.jam,
    required this.pasien,
    required this.review,
    required this.view,
    required this.about,
    required this.pengalaman});

  factory Anak.fromJson(Map map) {
    return Anak(
        poli: map['poli'],
        image: map['image'],
        nama: map['nama'],
        hari: map['hari'],
        jam: map['jam'],
        pasien: map['pasien'],
        review: map['review'],
        view: map['about'],
        about: map['about'],
        pengalaman: map['pengalaman']);
  }
}