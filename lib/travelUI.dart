import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: TravelCard(),
  ));
}

class TravelCard extends StatefulWidget {
  @override
  State<TravelCard> createState() => _TravelCardState();
}

class _TravelCardState extends State<TravelCard> {
  var photos = [
    "assets/icons/eiffel-tower.jpg",
    "assets/icons/great wall of china.jpg",
    "assets/icons/dubai.jpg",
    "assets/icons/taj mahal.jpg",
    "assets/icons/colloseum.jpg",
    "assets/icons/christ the redeemer.jpg",
    "assets/icons/singapore.jpg",
    "assets/icons/machu pichu.jpg"
  ];

  var places = [
    "Paris",
    "China",
    "Dubai",
    "India",
    "Rome",
    "Brazil",
    "Singapore",
    "Machu Pichu"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.builder(
          itemCount: photos.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              mainAxisSpacing: 10,
              mainAxisExtent: 150,
              crossAxisSpacing: 10),
          itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(6.0),
                child: Stack(
                  children: [
                    Container(
                      height: 150,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: AssetImage(photos[index]),
                              fit: BoxFit.cover)),
                    ),
                    Positioned(
                        top: 100,
                        left: 15,
                        child: Text(
                          places[index],
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: Colors.white),
                        ))
                  ],
                ),
              )),
    );
  }
}
