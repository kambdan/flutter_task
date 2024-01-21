import 'package:flutter/material.dart';
import 'package:flutter_task/presentation/pages/body.dart';
import 'package:flutter_task/presentation/pages/subjescts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Body(),
    Subject(), // Aquí podrías reemplazar esto por la página real que deseas mostrar
    Text('Settings Page'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // Agrega un arreglo de colores para el fondo.
  static const List<Color> _bgColors = <Color>[
    Colors.white,
    Color.fromRGBO(81, 49, 116, 1), // Color para la primera pestaña.
    // Color para la tercera pestaña.
  ];
  static const List<Color> _bgMenu = <Color>[
    Color.fromRGBO(81, 49, 116, 1), // Color para la primera pestaña.
    Colors.white,
    // Color para la tercera pestaña.
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: _bgColors[_selectedIndex],
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: Icon(
                  Icons.menu,
                  color: _bgMenu[_selectedIndex],
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
        ),
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: BottomAppBar(
          color: _bgColors[_selectedIndex],
          shape:
              const CircularNotchedRectangle(), // Forma para el notch del FAB
          notchMargin: 1.0, // Margen alrededor del notch
          child: ClipRRect(
            borderRadius: const BorderRadius.vertical(
                top: Radius.circular(22.0), bottom: Radius.circular(22.0)),
            // Esquinas redondeadas
            child: BottomNavigationBar(
              backgroundColor: _bgColors[0],
              iconSize: 22,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Inicio',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.book),
                  label: 'Materias',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.school),
                  label: 'FAQ\'s',
                ),
              ],
              currentIndex: _selectedIndex,
              selectedItemColor: Colors.blue,
              onTap: _onItemTapped,
            ),
          ),
        ));
  }
}
