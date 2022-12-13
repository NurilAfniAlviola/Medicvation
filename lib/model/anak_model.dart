class Anak{
  final String poli;
  final String image;
  final String nama;
  final String hari;
  final String jam;

  Anak({required this.poli, required this.image, required this.nama, required this.hari, required this.jam});

  factory Anak.fromJson(Map map) {
    return Anak(poli: map['poli'],
        image: map['image'], nama: map['nama'],
        hari: map['hari'], jam: map['jam']);
  }
}