import 'package:dokter_app/register.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:dokter_app/home.dart';
import 'package:dokter_app/onboard.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController usn = TextEditingController();
  TextEditingController pwd = TextEditingController();

  void login(String username, password) async {
    try {
      var response = await Dio().get('http://localhost:3000/user');
      var panjang_data = response.data.length -1;
      print(response.data.toString());
      print("ini response : " + response.statusCode.toString());
      if (response.statusCode == 200) {
        bool akunexist = false;
        for (var i = 0; i <= panjang_data; i++) {
          if (username == response.data[i]['username']
              && password == response.data[i]['password']) {
            akunexist = true;
            print("Login success");
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Home()));
            break;
          }
        }

        if(akunexist == false){
          final snackBar = SnackBar(
            backgroundColor: Colors.redAccent,
            content: Text(
              'Login failed',
              style: TextStyle(
                fontFamily: 'Poppins-Regular',
                color: Colors.white,
              ),
            ),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      }
    } catch (e) {
      final snackBar = SnackBar(
        backgroundColor: Colors.tealAccent,
        content: Text(
          e.toString(),
          style: TextStyle(
            fontFamily: 'Poppins-Regular',
            color: Colors.white,
          ),
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 23),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: SingleChildScrollView(
          child: Container(
            height: 700,
            child: Column(
              children: <Widget>[
                Image.asset(
                  'assets/img/logo.png',
                  fit: BoxFit.cover,
                ),
                Padding(padding: EdgeInsets.only(bottom: 8)),
                Align(
                  child: Column(
                    children: const <Widget>[
                      Text(
                        'Login Account',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black87,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 3),
                      Padding(padding: EdgeInsets.only(bottom: 40)),
                    ],
                  ),
                ),
                SizedBox(height: 25),
                TextField(
                  controller: usn,
                  style: const TextStyle(
                    fontFamily: 'Poppins Light',
                    fontSize: 16,
                  ),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: "Username",
                    hintText: "Username",
                    contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                    hintStyle: const TextStyle(
                      fontFamily: 'Poppins Light',
                      fontSize: 16,
                      color: Color(0x38000000),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(bottom: 10)),
                SizedBox(height: 18),
                TextField(
                  controller: pwd,
                  style: const TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                  ),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: "Password",
                    hintText: "Password",
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 18),
                    hintStyle: const TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      color: Color(0x38000000),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                const Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    "Forgot password?",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(bottom: 70)),
                ElevatedButton(
                  onPressed: () {
                    login(usn.text, pwd.text);
                  },
                  child: const Text("LOGIN",
                      style: TextStyle(
                        fontFamily: 'Poppins Bold',
                        fontSize: 18,
                      )),
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xff6cab36),
                      minimumSize: const Size.fromHeight(55),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      )),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account?",
                        style: TextStyle(
                          fontFamily: 'Poppins Light',
                          fontSize: 15,
                          color: Color(0x87000000),
                        )),
                    SizedBox(width: 7),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => Register()),
                        );
                      },
                      child: const Text("Sign up",
                          style: TextStyle(
                            fontFamily: 'Poppins Light',
                            fontSize: 15,
                            color: Color(0xff000000),
                          )),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
