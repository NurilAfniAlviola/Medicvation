class PenyakitDalam{
  final String poli;
  final String image;
  final String nama;
  final String hari;
  final String jam;

  PenyakitDalam({required this.poli, required this.image, required this.nama, required this.hari, required this.jam});

  factory PenyakitDalam.fromJson(Map map) {
    return PenyakitDalam(poli: map['poli'],
        image: map['image'], nama: map['nama'],
        hari: map['hari'], jam: map['jam']);
  }
}