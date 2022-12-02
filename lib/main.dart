import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(List<String> args) {
  runApp(MyApp());
}

Color maincolor = Color.fromARGB(255, 91, 189, 189);
Color startingcolor = Color.fromARGB(255, 81, 145, 145);

class MyApp extends StatelessWidget {
  List<String> menuItems = [
    'Adoption',
    'Donation',
    'Add pet',
    'Favorites',
    'Messages',
    'Profile',
  ];
  List<IconData> icons = [
    FontAwesomeIcons.paw,
    // ignore: deprecated_member_use
    FontAwesomeIcons.home,
    FontAwesomeIcons.plus,
    FontAwesomeIcons.heart,
    FontAwesomeIcons.envelope,
    // ignore: deprecated_member_use
    FontAwesomeIcons.userAlt,

  ];
  Widget buildMenuRow(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Row(
        children: <Widget>[
          Icon(
            icons[index],
            color: Colors.white,
          ),
          SizedBox(
            width: 15,
          ),
          Text(
            menuItems[index],
            style: TextStyle(
              color: Colors.white,
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return 
  }
}
