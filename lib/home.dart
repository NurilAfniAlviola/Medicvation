import 'package:flutter/material.dart';
import 'package:dokter_app/tabview/umum.dart' as view;
import 'package:dokter_app/tabview/anak.dart' as anak;
import 'package:dokter_app/tabview/gigi.dart' as gigi;
import 'package:dokter_app/tabview/kandungan.dart' as kandungan;
import 'package:dokter_app/tabview/saraf.dart' as saraf;
import 'package:dokter_app/tabview/penyakitdalam.dart' as pd;

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 6,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Color(0xff2a362a),
            title: Image.asset("assets/img/logo.png"),
            bottom: const TabBar(
              isScrollable: true,
              tabs: <Widget>[
                Tab(child: Text('Umum')),
                Tab(child: Text('Anak')),
                Tab(child: Text('Penyakit Dalam')),
                Tab(child: Text('Saraf')),
                Tab(child: Text('Kandungan')),
                Tab(child: Text('Gigi')),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              //kemudian panggil halaman sesuai tab yang sudah dibuat
              view.Umum(),
              anak.Anak(),
              pd.PenyakitDalam(),
              kandungan.Kandungan(),
              saraf.Saraf(),
              gigi.Gigi()
            ],
          ),
        ));
  }
}
