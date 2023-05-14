import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    useInheritedMediaQuery: true,
    home: CallScreen(),
  ));
}

class CallScreen extends StatelessWidget {
  var names = [
    'Nitheesh',
    'Ajeesh',
    'Bineesh',
    'Sudheesh',
    'Maneesh',
    'Dinesh',
    'Ratheesh',
    'Nitheesh',
    'Ajeesh',
    'Bineesh',
    'Sudheesh',
  ];
  var images = [
    'assets/icons/meme1.jpg',
    'assets/icons/meme2.jpg',
    'assets/icons/meme3.jpg',
    'assets/icons/meme4.jpg',
    'assets/icons/meme5.jpg',
    'assets/icons/meme6.jpg',
    'assets/icons/meme7.jpg',
    'assets/icons/meme1.jpg',
    'assets/icons/meme2.jpg',
    'assets/icons/meme3.jpg',
    'assets/icons/meme4.jpg',
  ];
  var callTime = [
    "3 : 20 PM",
    "12 : 44 PM",
    "10 : 20 AM",
    "9 : 20 AM",
    "12 : 40 AM",
    "11 : 49 PM",
    "7 : 26 PM",
    "7 : 09 PM",
    "5 :20 PM",
    "2 : 40 PM",
    "15 : 20 PM",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: Color.fromARGB(245, 7, 94, 84),
          onPressed: () {},
          child: Icon(
            Icons.add_ic_call,
            size: 30,
          )),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(245, 7, 94, 84),
        title: Text(
          "WhatsApp",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(names[index]),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(images[index]),
                    ),
                    subtitle: Wrap(children: [
                      Icon(
                        Icons.call_received,
                        size: 15,
                        color: Colors.green,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(callTime[index]),
                    ]),
                    trailing: Icon(
                      Icons.call,
                      color: Color.fromARGB(245, 7, 94, 84),
                      size: 22,
                    ),
                  ),
                );
              },
              itemCount: names.length,
            ),
          ],
        ),
      ),
    );
  }
}
