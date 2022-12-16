import 'package:flutter/material.dart';
import 'package:dokter_app/model/umum_model.dart';

import 'book.dart';

class DetailUmum extends StatelessWidget {
  final Umum umum;

  const DetailUmum({Key? key, required this.umum}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget judul = Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text(umum.nama,
                        style: Theme.of(context).textTheme.headline6),
                  ),
                  Text(
                    umum.hari,
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ],
              ),
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('5')
        ],
      ),
    );

    Column _buildButtonColumn(Color color, IconData icon, String label) {
      return Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: color),
            Container(
              margin: const EdgeInsets.only(top: 8),
              child: Text(label,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: color,
                  )),
            )
          ]);
    }

    Color color = Colors.teal;

    Widget atasRow =
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Column(
        children: [
          Text("Potensi"),
          Text("3.04 K"),
        ],
      ),
      Column(
        children: [
          Text("Potensi"),
          Text("3.04 K"),
        ],
      ),
      Column(
        children: [
          Text("Potensi"),
          Text("3.04 K"),
        ],
      ),
    ]);

    Widget deskripsi = Container(
      padding: EdgeInsets.all(16),
      child: Text(
        umum.about,
        style: Theme.of(context).textTheme.bodyText1,
        softWrap: true,
        textAlign: TextAlign.justify,
      ),
    );

    Widget button = ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Booking()),
          );
        },
        child: const Text("Book Appointment",
            style: TextStyle(
                fontFamily: 'Poppins Bold',
                fontSize: 22,
                color: Color.fromARGB(255, 252, 252, 252))),
        style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xff6cab36),
            minimumSize: const Size.fromHeight(50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            )),
    );

    Widget review_view = Container(
      padding: EdgeInsets.all(16),
      child: Text(
        umum.view,
        style: Theme.of(context).textTheme.bodyText1,
        softWrap: true,
        textAlign: TextAlign.justify,
      ),
    );

    Widget pengalaman = Container(
      padding: EdgeInsets.all(16),
      child: Text(
        umum.pengalaman,
        style: Theme.of(context).textTheme.bodyText1,
        softWrap: true,
        textAlign: TextAlign.justify,
      ),
    );

    Widget review = Container(
      padding: EdgeInsets.all(16),
      child: Text(
        umum.review,
        style: Theme.of(context).textTheme.bodyText1,
        softWrap: true,
        textAlign: TextAlign.justify,
      ),
    );

    Widget hari = Container(
      padding: EdgeInsets.all(16),
      child: Text(
        umum.hari,
        style: Theme.of(context).textTheme.bodyText1,
        softWrap: true,
        textAlign: TextAlign.justify,
      ),
    );

    Widget jam = Container(
      padding: EdgeInsets.all(16),
      child: Text(
        umum.jam,
        style: Theme.of(context).textTheme.bodyText1,
        softWrap: true,
        textAlign: TextAlign.justify,
      ),
    );

    Widget pasien = Container(
      padding: EdgeInsets.all(16),
      child: Text(
        umum.pasien,
        style: Theme.of(context).textTheme.bodyText1,
        softWrap: true,
        textAlign: TextAlign.justify,
      ),
    );

    Widget datetime = Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(umum.hari),
          Text(umum.jam)
        ],
      )
    );

    Widget bar = TabBar(
      isScrollable: true,
      tabs: <Widget>[
        Tab(child: Text('About')),
        Tab(child: Text('Anak')),
        Tab(child: Text('Penyakit Dalam')),
        Tab(child: Text('Saraf')),
        Tab(child: Text('Kandungan')),
        Tab(child: Text('Gigi')),
      ],
    );

    Widget barview = TabBarView(
      children: <Widget>[
        //kemudian panggil halaman sesuai tab yang sudah dibuat
        Text(umum.about),
        Text(umum.review)
      ],
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff2a362a),
        title: Text(umum.nama),
      ),
      body: ListView(
        children: <Widget>[
          Image.network(
            umum.image,
            width: 100,
            fit: BoxFit.cover,
          ),
          judul,
          atasRow,
          button,
          datetime,
          bar,

        ],
      ),
    );
  }
}
