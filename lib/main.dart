import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
       appBar: AppBar(
        title: Text("App Title!"),
       ),
       body: Text('This is BODY'),
       bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon : Icon(Icons.home)
          ),
          BottomNavigationBarItem(
            label: 'Search',
            icon: Icon(Icons.search)
          ),
          BottomNavigationBarItem(
            label: 'Setting',
            icon : Icon(Icons.settings)
          )
        ],
       ),
      ),
    );
  }
}

