import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
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
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: 'FLUTTER PET APP',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Material(
          child: Container(
            // ignore: sort_child_properties_last
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 24,
                  horizontal: 20,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 24,
                          backgroundColor: Colors.amber,
                        ),
                        Text(
                          'Aditya',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: menuItems
                          .asMap()
                          .entries
                          .map((mapEntry) => buildMenuRow(mapEntry.key))
                          .toList(),
                    ),
                    Row(
                      children: const <Widget>[
                        Icon(FontAwesomeIcons.cog, color: Colors.white),
                        Text(
                          'Setting | Login',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [startingcolor, maincolor],
                    end: Alignment.bottomCenter,
                    begin: Alignment.topCenter)),
          ),
        ),
      );
    }
  }
}
