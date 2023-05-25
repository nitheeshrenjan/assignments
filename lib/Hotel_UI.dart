import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: Hotel_UI(),
  ));
}

class Hotel_UI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ConvexAppBar(
          backgroundColor: Colors.white,
          activeColor: Colors.purple,
          color: Colors.grey,
          items: [
            TabItem(icon: Icons.search, title: 'Search'),
            TabItem(icon: Icons.favorite, title: 'Favorite'),
            TabItem(icon: Icons.settings, title: 'Settings'),
          ]),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 370,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      colorFilter:
                          ColorFilter.mode(Colors.black38, BlendMode.darken),
                      fit: BoxFit.cover,
                      image: AssetImage(
                        "assets/icons/hotel_Main.jpeg",
                      ))),
              child: Stack(
                children: [
                  //Hotel Name
                  Positioned(
                      top: 250,
                      left: 20,
                      child: Text(
                        "Crowne Plaza",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Colors.white),
                      )),
                  // Place name
                  Positioned(
                      top: 280,
                      left: 20,
                      child: Text(
                        "Kochi, Kerala",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Colors.white),
                      )),
                  // Review bar
                  Positioned(
                      top: 310,
                      left: 20,
                      child: Container(
                        height: 35,
                        width: 120,
                        decoration: BoxDecoration(
                            color: Colors.white54,
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8, left: 10),
                          child: Text(
                            "8.4/85 reviews",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                      )),
                  Positioned(
                      top: 320,
                      left: 340,
                      child: FaIcon(
                        FontAwesomeIcons.heart,
                        color: Colors.white,
                      ))
                ],
              ),
            ),

            // A NEW ROW IS CREATED AND THIS ROW HAS 2 CONTAINERS

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // FIRST CONTAINER FOR RATING AND LOCATION
                Container(
                  height: 70,
                  width: 200,
                  child: Stack(
                    // RATING ICONS AND LOCATION IS SET IN THIS STACK

                    children: [
                      Positioned(
                          left: 30,
                          top: 10,
                          child: Icon(
                            Icons.star,
                            color: Colors.purple,
                          )),
                      Positioned(
                          left: 50,
                          top: 10,
                          child: Icon(
                            Icons.star,
                            color: Colors.purple,
                          )),
                      Positioned(
                          left: 70,
                          top: 10,
                          child: Icon(
                            Icons.star,
                            color: Colors.purple,
                          )),
                      Positioned(
                          left: 90,
                          top: 10,
                          child: Icon(
                            Icons.star,
                            color: Colors.purple,
                          )),
                      Positioned(
                          left: 110,
                          top: 10,
                          child: Icon(
                            Icons.star,
                            color: Colors.grey,
                          )),

                      //LOCATION ICON

                      Positioned(
                          left: 30,
                          top: 33,
                          child: Icon(
                            Icons.location_on,
                            color: Colors.grey,
                          )),

                      //DETAILS OF LOCATION

                      Positioned(
                          left: 55,
                          top: 36,
                          child: Text(
                            "8 km to LuluMall",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ))
                    ],
                  ),
                ),

                // A SECOND CONTAINER IS CREATED TO STORE THE RATE PER NIGHT AREA
                // STACK IS CREATED IN THIS CONTAINER

                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Container(
                    height: 70,
                    width: 140,
                    child: Stack(
                      children: [
                        Positioned(
                            left: 30,
                            top: 10,
                            child: Text(
                              "2000 rs",
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.purple),
                            )),
                        Positioned(
                            top: 36,
                            left: 30,
                            child: Text(
                              "/per night",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.grey),
                            ))
                      ],
                    ),
                  ),
                )
              ],
            ),

            // BOOK NOW BUTTON

            Center(
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      minimumSize: Size(300, 40),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: Text(
                    "Book Now",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
            ),

            // HEADING OF THE HOTEL

            Padding(
              padding: const EdgeInsets.only(left: 8, top: 20),
              child: Text(
                "Ramada Plaza Palm Grove",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Colors.black87),
              ),
            ),

            //DETAILS OF THE HOTEL

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 390,
                height: 210,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        '''Crowne Plaza Kochi is ideally located on the new business district of the city NH 47 Bypass and provides easy access to Info Park Kakkanad, Cochin Special Economic Zone, M.G. Road, Cochin Port, Shipyard, Naval Base, major sightseeing areas like Fort Kochi, Mattancherry and is 45 minutes away from Cochin International Airport.

The hotel offers 269 spacious business rooms and suites with excellent views of the backwaters and the city. Our variety of authentic culinary outlets, extensive spa and leisure facilities, and high-tech meeting spaces that can accommodate large gatherings, all within a tranquil waterfront setting, makes Crowne Plaza Kochi the preferred international brand for business, leisure and events.

Our Aira Spa is one of the largest hotel spas in Kerala, with a dedicated area of 25,000 sq. ft. The facilities include a beautiful reception with lobby, outdoor relaxation area with a tropical garden and water bodies, private relaxation lounge, consultation room, seven therapy suites of which three are dedicated to Ayurvedic therapies and treatments, three to western and oriental therapies and one is a couple's suite with Jacuzzi.
                      ''',
                        style: TextStyle(color: Colors.black87),
                        textAlign: TextAlign.justify,
                      ),
                    ],
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
