import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:prueba/screens/HomeScreen.dart';

class MainScreen extends StatefulWidget {
  static final String route = "/MainScreen";

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _page = 1;

  List<Widget> _pages = [
    Text("1"),
    HomeScreen(),
    Container(), // Perfil
  ];

  FloatingActionButtonLocation _getFabLocation() {
    switch (_page) {
      case 0:
        return FloatingActionButtonLocation.startDocked;
      case 1:
        return FloatingActionButtonLocation.centerDocked;
      default:
        return FloatingActionButtonLocation.endDocked;
    }
  }

  IconData _getFabIcon() {
    switch (_page) {
      case 0:
        return FontAwesomeIcons.solidCompass;
      case 1:
        return FontAwesomeIcons.home;
      default:
        return FontAwesomeIcons.user;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_page],
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          height: 80,
          width: 80,
          child: FittedBox(
            child: FloatingActionButton(
              elevation: 0,
              child: FaIcon(
                _getFabIcon(),
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: _getFabLocation(),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8.0,
        clipBehavior: Clip.antiAlias,
        elevation: 50,
        color: Colors.transparent,
        child: Container(
          height: 100,
          child: Container(
            color: Colors.transparent,
            child: BottomNavigationBar(
              currentIndex: _page,
              backgroundColor: Colors.white,
              selectedItemColor: Colors.transparent,
              unselectedItemColor: Theme.of(context).primaryColor,
              onTap: (index) {
                setState(() {
                  _page = index;
                });
              },
              items: [
                BottomNavigationBarItem(
                  icon: FaIcon(
                    FontAwesomeIcons.compass,
                    size: 18,
                  ),
                  label: 'Tours',
                ),
                BottomNavigationBarItem(
                  icon: FaIcon(
                    FontAwesomeIcons.home,
                    size: 18,
                  ),
                  label: 'Inicio',
                ),
                BottomNavigationBarItem(
                  icon: FaIcon(
                    FontAwesomeIcons.user,
                    size: 18,
                  ),
                  label: 'Perfil',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
