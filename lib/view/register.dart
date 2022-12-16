import 'package:dokter_app/utils.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:dokter_app/view/login.dart';

class Register extends StatefulWidget {
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();

  var emailtxt = TextEditingController();
  var usntxt = TextEditingController();
  var pwdtxt = TextEditingController();

  void register(String email, username, password) async {

    try {
      var response = await Dio().post('$BASE_URL/user',
          data: {"email": email,"username": username, "password": password});
      if (response.statusCode == 201) {
        //cek
        print("Login success");
        Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => Login()));
      } else {
        print("Registration Failed");
      }
    } catch (e) {
      print(e);
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
                        'Create Account',
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
                TextFormField(
                  controller: emailtxt,
                  style: const TextStyle(
                    fontFamily: 'Poppins Light',
                    fontSize: 16,
                  ),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: "Email",
                    hintText: "Email",
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

                SizedBox(height: 25),
                TextFormField(
                  controller: usntxt,
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
                TextFormField(
                  controller: pwdtxt,
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

                const Spacer(),
                ElevatedButton(
                  onPressed: () {
                    if(emailtxt.text.isEmpty || usntxt.text.isEmpty || pwdtxt.text.isEmpty){
                      ScaffoldMessenger.of(context).showSnackBar
                        (SnackBar(content: Text('Please complete the form!!!'),
                        duration: Duration(seconds: 3), backgroundColor: Colors.redAccent,));
                    }else {
                      register(emailtxt.text, usntxt.text, pwdtxt.text);
                    }
                  },
                  child: const Text("Register",
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
                    const Text("Already have an account?",
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
                          MaterialPageRoute(builder: (context) => Login()),
                        );
                      },
                      child: const Text("Sign In",
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
