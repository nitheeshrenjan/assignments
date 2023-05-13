import 'package:assignments/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  var formkey = GlobalKey<FormState>();
  bool showpwd = true;
  bool showpwd2 = true;
  var confirmpass;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
        titleTextStyle: TextStyle(
            fontStyle: FontStyle.italic,
            fontSize: 25,
            fontWeight: FontWeight.bold),
        backgroundColor: Colors.lightBlue,
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                colorFilter:
                    ColorFilter.mode(Colors.white70, BlendMode.overlay),
                opacity: 0.5,
                image: AssetImage("assets/icons/LoginPagePic.jpg"),
                fit: BoxFit.cover)),
        child: Form(
          key: formkey,
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(25.14),
                    child: Text("Sign Up",
                        style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 32)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Create an account.  Enter your details",
                        style: TextStyle(
                            color: Colors.black45,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter your name",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18)),
                        prefixIcon: Icon(
                          Icons.notes_outlined,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter email id",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18)),
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.blue,
                        ),
                      ),
                      validator: (uname) {
                        if (uname!.isEmpty || !uname.contains('@')) {
                          return "Enter a valid email";
                        } else {
                          return null; // else part always returns a null value
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      obscureText: showpwd,
                      obscuringCharacter: "*",
                      decoration: InputDecoration(
                          hintText: 'Enter password',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18)),
                          prefixIcon: Icon(
                            Icons.password,
                            color: Colors.blue,
                          ),
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  if (showpwd) {
                                    showpwd = false;
                                  } else {
                                    showpwd = true;
                                  }
                                });
                              },
                              icon: Icon(showpwd == true
                                  ? Icons.visibility_off
                                  : Icons.visibility))),
                      validator: (pass) {
                        confirmpass = pass;
                        if (pass!.isEmpty || pass.length < 6) {
                          return 'Not a valid password';
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                  //Confirm password box
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      obscureText: showpwd2,
                      obscuringCharacter: "*",
                      decoration: InputDecoration(
                          hintText: 'Confirm Password',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18)),
                          prefixIcon: Icon(
                            Icons.password,
                            color: Colors.blue,
                          ),
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  if (showpwd2) {
                                    showpwd2 = false;
                                  } else {
                                    showpwd2 = true;
                                  }
                                });
                              },
                              icon: Icon(showpwd2 == true
                                  ? Icons.visibility_off
                                  : Icons.visibility))),
                      validator: (cpass) {
                        if (cpass!.isEmpty ||
                            cpass.length < 6 ||
                            confirmpass != cpass) {
                          return 'Not a valid password';
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: ElevatedButton(
                        //Login Button
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LoginPage()));
                        },
                        child: Text(
                          "Sign Up",
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          minimumSize: Size(100, 50),
                          textStyle: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => LoginPage()));
                      },
                      child: Text("Already a user?.. Click here to login"))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
