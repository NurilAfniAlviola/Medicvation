import 'package:dokter_app/service/umum_service.dart';
import 'package:flutter/material.dart';
import 'package:dokter_app/tabview/umum.dart' as umum;

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 1,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Color(0xff2a362a),
            title: const Text(
              "Home",
              style: TextStyle(color: Colors.black),
            ),
            bottom: const TabBar(
              isScrollable: true,
              tabs: <Widget>[
                Tab(child: Text('Umum')),
                // Tab(child: Text('Anak')),
                // Tab(child: Text('Penyakit Dalam')),
                // Tab(child: Text('Saraf')),
                // Tab(child: Text('Kandungan')),
                // Tab(child: Text('Gigi')),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              //kemudian panggil halaman sesuai tab yang sudah dibuat
              umum.Umum(),
            ],
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Color(0xff2a362a),
                  ),
                  child: Text('Ramen Application'),
                ),
                ListTile(
                  leading: Icon(Icons.account_circle),
                  title: const Text('Profile'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: const Text('Setting'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.info),
                  title: const Text('About'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
