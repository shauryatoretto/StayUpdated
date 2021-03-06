import 'package:new_app/businesspage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:new_app/homepage.dart';
import 'package:new_app/entertainmentpage.dart';
import 'package:new_app/healthpage.dart';
import 'package:new_app/sportspage.dart';
import 'package:new_app/sciencepage.dart';
import 'package:new_app/technologypage.dart';
import 'package:new_app/homepage.dart';
import 'package:new_app/webview.dart';
import 'package:url_launcher/url_launcher.dart';

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.indigo,
            ),
            child: Center(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 20),
                  Image(
                    image: AssetImage('assets/stayupdated.png'),
                    height: 100,
                  ),
                ],
              ),
            ),
          ),
          //SizedBox(height:70),
          ListTile(
            leading: Icon(
              FontAwesomeIcons.newspaper,
              color: Colors.indigo[400],
            ),
            title: Text(
              'Top Headlines',
              style: TextStyle(
                fontSize: 17,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Homepage(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(
              FontAwesomeIcons.businessTime,
              color: Colors.indigo[400],
            ),
            title: Text(
              'Business',
              style: TextStyle(
                fontSize: 17,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Businesspage(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(
              FontAwesomeIcons.video,
              color: Colors.indigo[400],
            ),
            title: Text(
              'Entertainment',
              style: TextStyle(
                fontSize: 17,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Entertainmentpage(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(
              FontAwesomeIcons.clinicMedical,
              color: Colors.indigo[400],
            ),
            title: Text(
              'Health',
              style: TextStyle(
                fontSize: 17,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Healthpage(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(
              FontAwesomeIcons.microscope,
              color: Colors.indigo[400],
            ),
            title: Text(
              'Science',
              style: TextStyle(
                fontSize: 17,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Sciencepage(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(
              FontAwesomeIcons.running,
              color: Colors.indigo[400],
            ),
            title: Text(
              'Sports',
              style: TextStyle(
                fontSize: 17,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Sportspage(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(
              FontAwesomeIcons.networkWired,
              color: Colors.indigo[400],
            ),
            title: Text(
              'Technology',
              style: TextStyle(
                fontSize: 17,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Technologypage(),
                ),
              );
            },
          ),
          Divider(
            color: Colors.indigo[400],
            height: 10,
            thickness: 1,
          ),
          ListTile(
            leading: Icon(
              FontAwesomeIcons.userGraduate,
              color: Colors.indigo[400],
            ),
            title: Text(
              'About the developer',
              style: TextStyle(
                fontSize: 17,
              ),
            ),
            onTap: () {
              launch('https://shauryasuman.netlify.app');
            },
          ),
        ],
      ),
    );
  }
}
