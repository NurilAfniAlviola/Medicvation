
class Saraf{
  final String poli;
  final String image;
  final String nama;
  final String hari;
  final String jam;

  Saraf({required this.poli, required this.image, required this.nama, required this.hari, required this.jam});

  factory Saraf.fromJson(Map map) {
    return Saraf(poli: map['poli'],
        image: map['image'], nama: map['nama'],
        hari: map['hari'], jam: map['jam']);
  }
}