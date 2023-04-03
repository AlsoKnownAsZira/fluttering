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
        title:const Text("App Title!"),
       ),
       body: const Text('This is BODY'),
       bottomNavigationBar: BottomNavigationBar(
        items:const [
          BottomNavigationBarItem(
            label: 'Home',
            icon : Icon(Icons.home)
          ),
          BottomNavigationBarItem(
            label: 'Search',
            icon: Icon(Icons.search)
          ),
          BottomNavigationBarItem(
            label: 'Report',
            icon : Icon(Icons.report,
            color: Colors.red)
          )
        ],
       ),
      ),
    );
  }
}

