import 'package:assignments/TravelApp/dummyData.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       home: TravelHomePage(),
//       routes: {
//         "Second": (context) => DetailsPage(),
//       },
//     ),
//   );
// }

class TravelHomePage extends StatelessWidget {
  const TravelHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Travel App"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.menu,
                    size: 30,
                  ),
                  SizedBox(
                    width: 65,
                    child: Row(
                      children: [
                        Text(
                          "Go",
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Fast",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.person,
                    color: Colors.blue,
                    size: 30,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 4, right: 4),
              child: Container(
                color: Colors.grey[200],
                child: TextField(
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                      hintText: "   Search", suffixIcon: Icon(Icons.search)),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 20, left: 10, right: 10, bottom: 20),
                  child: Text(
                    "Popular Places",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 20, left: 10, right: 10, bottom: 20),
                  child: Text(
                    "View All",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.grey[700]),
                  ),
                )
              ],
            ),
            GridView.count(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 2,
              children: List.generate(
                4,
                (index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () => gotoNext(context, products[index]["id"]),
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          colorFilter: ColorFilter.mode(
                              Colors.black26, BlendMode.overlay),
                          fit: BoxFit.cover,
                          image: AssetImage("${products[index]["image1"]}"),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "${products[index]["name"]}",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {},
                  //Sets a height 40 and width to infinity
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size.fromHeight(40),
                  ),
                  child: Text(
                    "Explore Now",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  )),
            )
          ],
        ),
      ),
    );
  }
}

void gotoNext(BuildContext context, productid) {
  Navigator.of(context).pushNamed("Second", arguments: productid);
}
