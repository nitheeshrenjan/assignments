import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'AppPage.dart';
import 'SignUpPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var formkey = GlobalKey<FormState>();
  bool showpwd = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text("LoginPage"),
        titleTextStyle: TextStyle(
            fontStyle: FontStyle.italic,
            fontSize: 25,
            fontWeight: FontWeight.bold),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                colorFilter:
                    ColorFilter.mode(Colors.white70, BlendMode.overlay),
                opacity: 0.5,
                image: AssetImage("assets/icons/LoginPagePic.jpg"),
                fit: BoxFit.cover)),
        child: Form(
          key: formkey,
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      "Login",
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 32),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Welcome back. Login with your credentials",
                      style: TextStyle(
                          color: Colors.black45,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.15),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter email id",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18)),
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.blue,
                        ),
                      ),
                      validator: (uname) {
                        if (uname!.isEmpty || !uname.contains('@')) {
                          return "Enter a valid email";
                        } else {
                          return null; // else part always returns a null value
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.15),
                    child: TextFormField(
                      obscureText: showpwd,
                      obscuringCharacter: "*",
                      decoration: InputDecoration(
                          hintText: 'Enter password',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18)),
                          prefixIcon: Icon(
                            Icons.password,
                            color: Colors.blue,
                          ),
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  if (showpwd) {
                                    showpwd = false;
                                  } else {
                                    showpwd = true;
                                  }
                                });
                              },
                              icon: Icon(showpwd == true
                                  ? Icons.visibility_off
                                  : Icons.visibility))),

                      // To check whether the format of input values are correct
                      validator: (pass) {
                        if (pass!.isEmpty || pass.length < 6) {
                          return 'Not a valid password';
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: ElevatedButton(
                        //Login Button
                        onPressed: () {
                          final valid = formkey.currentState!.validate();
                          if (valid) {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => AppPage()));
                          } else {}
                        },
                        child: Text(
                          "Login",
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          minimumSize: Size(100, 50),
                          textStyle: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SignUpPage()));
                      },
                      child: Text(
                        "Not a user?.. Sign Up",
                        selectionColor: Colors.indigo,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
