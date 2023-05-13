import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    useInheritedMediaQuery: true,
    home: Mainpage(),
  ));
}

class Mainpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.orange, Colors.pink, Colors.purple],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/icons/play_store_512.png",
              height: 100,
              width: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Tivi",
                  style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "dey",
                  style: GoogleFonts.roboto(color: Colors.white, fontSize: 50),
                )
              ],
            ),
          ], // Column children
        ),
      ),
    );
  }
}
