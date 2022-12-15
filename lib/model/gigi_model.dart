class Gigi{
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

  Gigi({
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

  factory Gigi.fromJson(Map map) {
    return Gigi(
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