class Kandungan{
  final String poli;
  final String image;
  final String nama;
  final String hari;
  final String jam;

  Kandungan({required this.poli, required this.image, required this.nama, required this.hari, required this.jam});

  factory Kandungan.fromJson(Map map) {
    return Kandungan(poli: map['poli'],
        image: map['image'], nama: map['nama'],
        hari: map['hari'], jam: map['jam']);
  }
}