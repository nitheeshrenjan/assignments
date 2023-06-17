import 'package:flutter/material.dart';

import 'DetailsPage.dart';
import 'TravelHomePage.dart';

void main() {
  runApp(MaterialApp(
    home: LoginTravel(),
    routes: {
      "First": (context) => TravelHomePage(),
      "Second": (context) => DetailsPage()
    },
  ));
}

class LoginTravel extends StatelessWidget {
  const LoginTravel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Travel App",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Container(
                height: 170,
                width: 170,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/travel Image.jpeg"),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("First");
                },
                child: Text(
                  "Login",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(150, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "- Or -",
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30, left: 30),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.blue,
                ),
                child: ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0),
                  dense: true,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100)),
                  title: Text(
                    "   Login With Facebook",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  trailing: Icon(
                    Icons.facebook,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30, left: 30, top: 20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.red,
                ),
                child: ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0),
                  dense: true,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100)),
                  title: Text(
                    "   Login With Google",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  trailing: Icon(
                    Icons.facebook,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30, left: 30, top: 20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.lightBlue[300],
                ),
                child: ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0),
                  dense: true,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100)),
                  title: Text(
                    "   Login With Twitter",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  trailing: Icon(
                    Icons.facebook,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
