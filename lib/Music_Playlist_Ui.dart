import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Music_Ui(),
  ));
}

class Music_Ui extends StatefulWidget {
  @override
  State<Music_Ui> createState() => _Music_UiState();
}

class _Music_UiState extends State<Music_Ui> {
  var photosUrl = [
    "assets/images/img.png",
    "assets/images/img_1.png",
    "assets/images/img_2.png",
    "assets/images/img_3.png",
    "assets/images/img_4.png",
    "assets/images/img_5.png",
    "assets/images/img_6.png"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.black87,
            fixedColor: Color.fromARGB(200, 194, 51, 172),
            unselectedLabelStyle: TextStyle(
              color: Color.fromARGB(200, 194, 51, 172),
            ),
            //To set the label color
            unselectedItemColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  label: "Search"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                  ),
                  label: "Playlists"),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.more_horiz,
                  color: Colors.white,
                ),
                label: "More",
              ),
            ]),
        body: Container(
          decoration: BoxDecoration(
            color: Colors.black,
          ),
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 16),
                  child: Text(
                    "Playlists",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                        color: Color.fromARGB(255, 194, 51, 172)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 25),
                  child: SizedBox(
                    width: 360,
                    child: TextField(
                      decoration: InputDecoration(
                        // For search text to be correct
                        fillColor: Color.fromARGB(230, 35, 35, 35),
                        filled: true,
                        contentPadding: EdgeInsets.only(left: 20, top: 4),
                        suffixIconColor: Color.fromARGB(200, 194, 51, 172),
                        hintText: "Search..",
                        hintStyle:
                            TextStyle(color: Color.fromARGB(200, 194, 51, 172)),
                        suffixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                      ),
                      children: List.generate(
                        7,
                        (index) => Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    image: AssetImage(photosUrl[index]),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
