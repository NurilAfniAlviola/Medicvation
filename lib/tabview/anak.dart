import 'package:flutter/material.dart';
import 'package:dokter_app/service/poli_service.dart';

import '../detailpoli.dart';

class Anak extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: FutureBuilder(
          future: PoliService.getDataUmum(),
          builder: (ctx, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                  child: Text('Please wait its loading...'));
            } else {
              if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              } else {
                return Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailPoli()));
                        },
                        title: new Card(
                            child: new Row(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Image.network(
                                    '${snapshot.data![index].image}',
                                    width: 100,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 8.0),
                                        child: Text(
                                          '${snapshot.data![index].nama}',
                                          style:
                                          Theme.of(context).textTheme.headline6,
                                        ),
                                      ),
                                      Text('${snapshot.data![index].hari}')
                                    ],
                                  ),
                                )
                              ],
                            )),
                      );
                    },
                  ),
                );
              }
            }
          },
        ),
      ),
    );
  }
}