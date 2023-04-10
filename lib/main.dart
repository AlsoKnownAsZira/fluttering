import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
  String buttonName = "click";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("App Title!"),
        ),
        body: Center(
            child: ElevatedButton(
                onPressed: () {
                  print("TESTING PRINT!");
                },
                child:  Text(buttonName))),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: 'Search', icon: Icon(Icons.search)),
            BottomNavigationBarItem(
                label: 'Report', icon: Icon(Icons.report, color: Colors.red))
          ],
        ),
      ),
    );
  }
}
