class Umum{
  final String poli;
  final String image;
  final String nama;
  final String hari;
  final String jam;

  Umum({required this.poli, required this.image, required this.nama, required this.hari, required this.jam});

  factory Umum.fromJson(Map map) {
    return Umum(poli: map['poli'],
        image: map['image'], nama: map['nama'],
        hari: map['hari'], jam: map['jam']);
  }
}