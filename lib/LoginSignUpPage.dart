import 'package:assignments/LoginPage.dart';
import 'package:assignments/SignUpPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MaterialApp(
    useInheritedMediaQuery: true,
    home: LoginSignUpPage(),
  ));
}

class LoginSignUpPage extends StatefulWidget {
  @override
  State<LoginSignUpPage> createState() => _LoginSignUpPageState();
}

class _LoginSignUpPageState extends State<LoginSignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text("HomePage"),
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
                opacity: 0.9,
                image: AssetImage("assets/icons/blueBack.jpg"),
                fit: BoxFit.cover)),
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(25.14),
                child: Text(
                  'Hello! Welcome',
                  style: GoogleFonts.lobster(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 32),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Text(
                  "Choose one of the options given below to enter.",
                  style: TextStyle(
                      fontSize: 16,
                      fontStyle: FontStyle.italic,
                      // fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Lottie.network(
                    "https://assets4.lottiefiles.com/packages/lf20_ucbyrun5.json",
                    width: 200,
                    height: 200),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                // Login button
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: Text("Login"),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    minimumSize: Size(100, 50),
                    textStyle: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                // Sign Up button
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => SignUpPage()));
                  },
                  child: Text("Sign Up"),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    minimumSize: Size(100, 50),
                    textStyle: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
