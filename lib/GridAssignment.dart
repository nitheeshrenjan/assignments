import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    useInheritedMediaQuery: true,
    home: Grid_Heart(),
  ));
}

class Grid_Heart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: GridView(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 30,
                mainAxisSpacing: 30,
                childAspectRatio: 1),
            children: [
              Container(
                height: 15,
                width: 30,
                child: Card(
                  child: Center(
                    child: ListTile(
                      leading: Icon(Icons.home),
                      title: Text("Heart Shake"),
                    ),
                  ),
                ),
              )
            ]));
  }
}
