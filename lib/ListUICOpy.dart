import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: List_Ui(),
  ));
}

class List_Ui extends StatelessWidget {
  var placeName = [
    "Great Wall",
    "Eiffel Tower",
    "Redeemer",
    "Dubai",
    "Taj Mahal"
  ];
  var countryName = ["China", "Paris", "Rio", "UAE", "India"];
  var category = [
    "Tourism",
    "Tourism",
    "Tourism",
    "Tourism",
    "Tourism",
    "Tourism",
  ];
  var photos = [
    "assets/icons/great wall of china.jpg",
    "assets/icons/eiffel-tower.jpg",
    "assets/icons/christ the redeemer.jpg",
    "assets/icons/dubai.jpg",
    "assets/icons/taj mahal.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Center(child: Text("Cities around the world")),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(8)),
                height: 150,
                width: double.infinity,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Image.asset(
                        "assets/icons/great wall of china.jpg",
                        fit: BoxFit.cover,
                        width: 225,
                      ),
                    ),
                    Positioned(
                      left: 250,
                      top: 30,
                      child: Text(
                        " Great Wall",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Positioned(
                        left: 255,
                        top: 60,
                        child: Text(
                          "China",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic),
                        )),
                    Positioned(
                        left: 255,
                        top: 110,
                        child: Text(
                          "Tourism",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic),
                        )),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(8)),
                height: 150,
                width: double.infinity,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Image.asset(
                        "assets/icons/eiffel-tower.jpg",
                        fit: BoxFit.cover,
                        width: 225,
                      ),
                    ),
                    Positioned(
                      left: 250,
                      top: 30,
                      child: Text(
                        " Eiffel Tower",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Positioned(
                        left: 255,
                        top: 60,
                        child: Text(
                          "Paris",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic),
                        )),
                    Positioned(
                        left: 255,
                        top: 110,
                        child: Text(
                          "Tourism",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic),
                        )),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(8)),
                height: 150,
                width: double.infinity,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Image.asset(
                        "assets/icons/christ the redeemer.jpg",
                        fit: BoxFit.cover,
                        width: 225,
                      ),
                    ),
                    Positioned(
                      left: 250,
                      top: 30,
                      child: Text(
                        "Redeemer",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Positioned(
                        left: 255,
                        top: 60,
                        child: Text(
                          "Rio",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic),
                        )),
                    Positioned(
                        left: 255,
                        top: 110,
                        child: Text(
                          "Tourism",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic),
                        )),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(8)),
                height: 150,
                width: double.infinity,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Image.asset(
                        "assets/icons/dubai.jpg",
                        fit: BoxFit.cover,
                        width: 225,
                      ),
                    ),
                    Positioned(
                      left: 250,
                      top: 30,
                      child: Text(
                        "Dubai",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Positioned(
                        left: 255,
                        top: 60,
                        child: Text(
                          "UAE",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic),
                        )),
                    Positioned(
                        left: 255,
                        top: 110,
                        child: Text(
                          "Tourism",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic),
                        )),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(8)),
                height: 150,
                width: double.infinity,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Image.asset(
                        "assets/icons/taj mahal.jpg",
                        fit: BoxFit.cover,
                        width: 225,
                      ),
                    ),
                    Positioned(
                      left: 250,
                      top: 30,
                      child: Text(
                        "Taj Mahal",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Positioned(
                        left: 255,
                        top: 60,
                        child: Text(
                          "India",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic),
                        )),
                    Positioned(
                        left: 255,
                        top: 110,
                        child: Text(
                          "Tourism",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic),
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
