import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: Profile_UI(),
  ));
}

class Profile_UI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage("assets/icons/meme4.jpg")),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.facebook,
                      size: 40,
                    ),
                    FaIcon(
                      FontAwesomeIcons.twitter,
                      size: 40,
                    ),
                    FaIcon(
                      FontAwesomeIcons.linkedin,
                      size: 40,
                    ),
                    FaIcon(
                      FontAwesomeIcons.github,
                      size: 40,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text(
                  "Jerin",
                  style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                "@Webinar",
                style: TextStyle(fontSize: 17),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "Mobile App Developer",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
              Container(
                height: 300,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 15),
                        child: Card(
                          color: Colors.white10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          child: ListTile(
                            leading: Icon(Icons.privacy_tip),
                            trailing: Icon(
                              Icons.expand_more_rounded,
                              size: 40,
                            ),
                            title: Text(
                              "Privacy",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 23),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 15),
                        child: Card(
                          color: Colors.white10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          child: ListTile(
                            leading: Icon(Icons.history),
                            trailing: Icon(
                              Icons.expand_more_rounded,
                              size: 40,
                            ),
                            title: Text(
                              "Purchase History",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 23),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 15),
                        child: Card(
                          color: Colors.white10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          child: ListTile(
                            leading: Icon(Icons.help),
                            trailing: Icon(
                              Icons.expand_more_rounded,
                              size: 40,
                            ),
                            title: Text(
                              "Help and Support",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 23),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 15),
                        child: Card(
                          color: Colors.white10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          child: ListTile(
                            leading: Icon(Icons.settings),
                            trailing: Icon(
                              Icons.expand_more_rounded,
                              size: 40,
                            ),
                            title: Text(
                              "Settings",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 23),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 15),
                        child: Card(
                          color: Colors.white10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          child: ListTile(
                            leading: Icon(Icons.person_add),
                            trailing: Icon(
                              Icons.expand_more_rounded,
                              size: 40,
                            ),
                            title: Text(
                              "Invite a Friend",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 23),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, top: 15, bottom: 25),
                        child: Card(
                          color: Colors.white10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          child: ListTile(
                            leading: Icon(Icons.logout),
                            trailing: Icon(
                              Icons.expand_more_rounded,
                              size: 40,
                            ),
                            title: Text(
                              "Log Out",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 23),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
