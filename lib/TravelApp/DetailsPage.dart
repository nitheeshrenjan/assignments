import 'package:flutter/material.dart';

import 'dummyData.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       home: DetailsPage(),
//     ),
//   );
// }

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)?.settings.arguments;

    final productFromList =
        products.firstWhere((element) => element["id"] == productId);

    return Scaffold(
      appBar: AppBar(
        title: Text("Hotel Details"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //This is the main portion of the row
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 35, left: 12),
                  child: Container(
                    //This part contains the details and rating of the hotel
                    height: 80,
                    width: 250,
                    child: Column(
                      children: [
                        Text(
                          "${productFromList["Heading"]}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text("${productFromList["rating"]}"),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                //This container has the image from previous page
                Padding(
                  padding: const EdgeInsets.only(top: 35, left: 15),
                  child: Container(
                    height: 80,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue,
                      image: DecorationImage(
                          image: AssetImage(productFromList["image2"]),
                          fit: BoxFit.cover),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 50),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 10),
                  child: Text(
                    "About Places",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 80,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 10),
                child: SingleChildScrollView(
                    child: Text("${productFromList["description"]}")),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 10),
                  child: Text(
                    "Special Facilities",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),

            // The blue color Icons and facilities
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 80,
                    child: Row(
                      children: [
                        Icon(
                          Icons.car_repair_rounded,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Parking",
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 115,
                    child: Row(
                      children: [
                        Icon(
                          Icons.people_outline,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "24x7 Support",
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 85,
                    child: Row(
                      children: [
                        Icon(
                          Icons.wifi,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Free Wifi",
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // The main Image of the hotel is in this container
            Padding(
              padding: const EdgeInsets.only(
                  left: 25, right: 25, top: 15, bottom: 15),
              child: Container(
                height: 200,
                //width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(productFromList["image3"]),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(15)),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 10),
                  child: Text("Accomodation",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(
                  4,
                  (index) => Container(
                        height: 40,
                        width: 70,
                        decoration: BoxDecoration(
                            color: Colors.lightBlue[200],
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 2, bottom: 2),
                              child: Text(
                                "Adult",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              "02",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      )),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 40, right: 40, top: 20, bottom: 30),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size.fromHeight(40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Book Now",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
