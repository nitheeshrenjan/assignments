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
          children: List.generate(
              5,
              (index) => Padding(
                    //Padding is set to separate each containers
                    padding: const EdgeInsets.all(8.0),
                    // Orange box container with specific height width and curved corner
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(8)),
                      height: 150,
                      width: double.infinity,
                      //Stack is created inside the orange container box
                      child: Stack(
                        children: [
                          Padding(
                            // Here a padding of 8 is set only on the left side of the image
                            padding: const EdgeInsets.only(left: 8),
                            child: Image.asset(
                              photos[index],
                              fit: BoxFit.cover,
                              width: 225,
                              // Height is set to infinity to cover
                              // the total height of the orange container
                              height: double.infinity,
                            ),
                          ),
                          // Positioned is used to align the text inside the container
                          Positioned(
                            left: 250,
                            top: 30,
                            child: Text(
                              placeName[index],
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
                                countryName[index],
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
                  )),
        ),
      ),
    );
  }
}
