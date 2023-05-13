import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    useInheritedMediaQuery: true,
    debugShowCheckedModeBanner: false,
    home: AppPage(),
  ));
}

class AppPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Page"),
        actions: [
          Icon(Icons.search),
          SizedBox(
            width: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Icon(Icons.menu),
          )
        ],
      ),
      body: ListView(
        children: [
          //Card gives shadow and atm card like structure
          Card(
            color: Colors.grey,
            child: ListTile(
              title: Text("Anu"),
              subtitle: Text("9837589890"),
              // leading: Icon(Icons.contacts_sharp), // for predefined icon
              leading: CircleAvatar(
                backgroundImage: AssetImage(
                    "assets/icons/login Icon.png"), // for setting our own image
              ),
              trailing: Icon(Icons.phone), // for single icon right side
            ),
          ),
          Card(
            color: Colors.grey,
            child: ListTile(
              title: Text("Nitheesh"),
              subtitle: Text("5537589890"),
              leading: Icon(Icons.contacts_sharp),
              // for contact icon
              //Wrap is used for creating multiple icons in contact right side
              trailing: Wrap(children: [
                Icon(Icons.phone),
                //Used to give spacing between widgets
                SizedBox(
                  width: 15,
                ),
                Icon(Icons.message)
              ]),
            ),
          ),
          Text("Sunu"),
          Text("Vinu"),
          Text("Manu"),
          Text("Jinu")
        ],
      ),
    );
  }
}
