import 'package:dokter_app/login.dart';
import 'package:dokter_app/onboard.dart';
import 'package:dokter_app/register.dart';
import 'package:flutter/material.dart';
import 'package:dokter_app/shared_pref.dart';

import 'home.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPref.init();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: OnBoard(),
    );
  }
}
