class Gigi{
  final String poli;
  final String image;
  final String nama;
  final String hari;
  final String jam;

  Gigi({required this.poli, required this.image, required this.nama, required this.hari, required this.jam});

  factory Gigi.fromJson(Map map) {
    return Gigi(poli: map['poli'],
        image: map['image'], nama: map['nama'],
        hari: map['hari'], jam: map['jam']);
  }
}