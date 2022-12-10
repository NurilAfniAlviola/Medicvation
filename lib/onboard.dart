import 'package:flutter/material.dart';
import 'login.dart';
import 'register.dart';

class OnBoard extends StatefulWidget {
  OnBoard({Key? key}) : super(key: key);

  @override
  State<OnBoard> createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(15, 0, 15, 60),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff2a362a),
        ),
        child: Container(
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(bottom: 20)),
                  Image.asset(
                    'assets/img/logo.png',
                    fit: BoxFit.cover,
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 20)),
                  Text(
                    'Choose the doctor of your choice\n according to your needs',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color(0xfff0f0f0),
                    ),
                  ),

                  Padding(padding: EdgeInsets.only(top: 15, bottom: 5)),
                  Image.asset(
                    'assets/img/amico.png',
                    fit: BoxFit.cover,
                  ),

                  Padding(padding: EdgeInsets.only(bottom: 20)),
                  Text(
                    'Registration for doctor \nreservations is easier and faster \nwith the help of Medivication',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      height: 1.2125,
                      color: Color(0xfff0f0f0),
                    ),
                  ),

                  Padding(padding: EdgeInsets.only(bottom: 20)),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                    child: const Text("Login",
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
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
