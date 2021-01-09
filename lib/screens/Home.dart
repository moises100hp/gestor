import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Color corBase = Color(0xFF662d91);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Home'),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem> [
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.list_alt, color: Colors.deepPurple),
           // backgroundColor: Colors.deepPurple,
              icon: Icon(Icons.list_alt, color: Colors.black87),
              label: 'Pedidos'
          ),
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.list_alt, color: Colors.deepPurple),
              icon: Icon(Icons.list_alt, color: Colors.black87),
              label: 'Ajuda'
          ),
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.help_center_sharp, color: Colors.deepPurple),
              icon: Icon(Icons.help_center_sharp, color: Colors.black87),
              label: 'PDVFlow', backgroundColor: Colors.black87
          ),
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.settings, color: Colors.deepPurple),
              icon: Icon(Icons.settings, color: Colors.black87),
              label: 'Configurações'
          ),
        ],
      ),
    );
  }
}
