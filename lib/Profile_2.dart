import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Profile_2(),
  ));
}

class Profile_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          centerTitle: true,
          title: Text("Profile"),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                height: 340,
                width: double.infinity,
                child: Stack(
                  children: [
                    Image(
                      image: AssetImage("assets/icons/dubai.jpg"),
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                    Positioned(
                        top: 200,
                        left: 30,
                        // Row for the 3 items, i.e message, proPic and add
                        child: Row(
                          children: [
                            FloatingActionButton(
                              onPressed: () {},
                              child: Icon(Icons.message),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 50, right: 50),
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 60, // For white border
                                child: CircleAvatar(
                                  radius: 56, // image size
                                  backgroundImage:
                                      AssetImage("assets/icons/meme4.jpg"),
                                ),
                              ),
                            ),
                            FloatingActionButton(
                              onPressed: () {},
                              child: Icon(Icons.add),
                            )
                          ],
                        )),
                  ],
                ),
              ),
              Text(
                "Akshay Kumar",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(onPressed: () {}, child: Text("Model")),
                  Text("/"),
                  TextButton(onPressed: () {}, child: Text("Superstar")),
                ],
              )
            ],
          ),
        ));
  }
}
