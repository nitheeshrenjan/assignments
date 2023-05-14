import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    useInheritedMediaQuery: true,
    home: List_Builder(),
  ));
}

class List_Builder extends StatelessWidget {
  var names = [
    'Nitheesh',
    'Ajeesh',
    'Bineesh',
    'Sudheesh',
    'Maneesh',
    'Dinesh',
    'Ratheesh'
  ];
  var phone = [
    9538798092,
    9857673879,
    9837265987,
    8873265879,
    8734658483,
    9837465893,
    7856879956
  ];
  var images = [
    'assets/icons/meme1.jpg',
    'assets/icons/meme2.jpg',
    'assets/icons/meme3.jpg',
    'assets/icons/meme4.jpg',
    'assets/icons/meme5.jpg',
    'assets/icons/meme6.jpg',
    'assets/icons/meme7.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("List View Builder",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 300, // to limit the size of scrollable portion
              child: ListView.builder(
                shrinkWrap: true, // to adjust the Screen according to list
                physics: ScrollPhysics(),
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(names[index]),
                      subtitle: Text("${phone[index]}"),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(images[index]),
                      ),
                    ),
                  );
                },
                itemCount: names.length,
              ),
            ),
            ElevatedButton(onPressed: () {}, child: Text('Next'))
          ],
        ));
  }
}
