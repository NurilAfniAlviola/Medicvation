import 'package:flutter/material.dart';
import 'package:dokter_app/service/poli_service.dart';

class Umum extends StatelessWidget {
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
                  child: GridView.builder(
                      itemCount: snapshot.data!.length,
                      gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 16,
                          mainAxisSpacing: 16),
                      itemBuilder: (ctx, i) {
                        return Container(
                          child: Stack(
                            children: [
                              Container(
                                width: double.infinity,
                                height: double.infinity,
                                child: Image.network(
                                  "${snapshot.data![i].image}",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment:
                                CrossAxisAlignment.center,
                                children: [
                                  Container(
                                      width: double.infinity,
                                      color: Colors.black26,
                                      child: Text(
                                        '${snapshot.data![i].nama}',
                                        textAlign: TextAlign.center,
                                        style:
                                        TextStyle(color: Colors.white),
                                      )),
                                ],
                              )
                            ],
                          ),
                        );
                      }),
                );
              }
            }
          },
        ),
      ),
    );
  }
}