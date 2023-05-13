import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    useInheritedMediaQuery: true,
    home: demoLogin(),
  ));
}

class demoLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("assets/icons/login Icon.png",
                  height: 80, width: 80),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    prefixIconColor: Colors.blue,
                    prefixIcon: Icon(Icons.person),
                    hintText: "Enter your name",
                    labelText: "Name",
                    labelStyle: TextStyle(fontStyle: FontStyle.italic),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email_outlined),
                    prefixIconColor: Colors.blue,
                    hintText: "E-mail",
                    labelText: "E-mail",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password),
                    prefixIconColor: Colors.blue,
                    hintText: "Enter your password",
                    labelText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      prefixIconColor: Colors.blue,
                      hintText: "Password",
                      labelText: "Confirm Password",
                      helperText: "Both passwords must be same",
                      labelStyle: TextStyle(fontStyle: FontStyle.italic),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)))),
            ),
            ElevatedButton(onPressed: () {}, child: Text("Login")),
            TextButton(onPressed: () {}, child: Text("Not a user?.. Sign up")),
            TextButton(onPressed: () {}, child: Text("Skip"))
          ],
        ),
      ),
    );
  }
}
