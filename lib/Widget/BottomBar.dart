import 'package:flutter/material.dart';
import 'package:ui_stuff/screens/page2.dart';
//import 'package:bottom_navigation_bar/home_screen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    favouritesPage(),
    favouritesPage(),
    favouritesPage(),
    favouritesPage(),


//    favouritesPage(),
    //Text('Profile Screen'),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        //backgroundColor: Color(0xffff4f59),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,color: Color(0xffabb4b9),
            ),
            activeIcon: Icon(
              Icons.home,color: Color(0xff9a7bff),
            ),

            title: Text(
              'Home',
              style: TextStyle(
                  color:  Color(0xff9a7bff)
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.pie_chart,color: Color(0xffabb4b9),
            ),
            activeIcon: Icon(
              Icons.pie_chart,color: Color(0xff9a7bff),
            ),
            title: Text(
              'Graphics',
              style: TextStyle(
                  color:  Color(0xff9a7bff)
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_alert,color: Color(0xffabb4b9),
            ),
            activeIcon: Icon(
              Icons.add_alert,color: Color(0xff9a7bff),
            ),
            title: Text(
              'Alert',
              style: TextStyle(
                  color:  Color(0xff9a7bff)
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,color: Color(0xffabb4b9),
            ),
            activeIcon: Icon(
              Icons.settings,color: Color(0xff9a7bff),
            ),
            title: Text(
              'Settings',
              style: TextStyle(
                  color:  Color(0xff9a7bff)
              ),
            ),
          ),

        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
        selectedFontSize: 13.0,
        unselectedFontSize: 13.0,
      ),
    );
  }
}
