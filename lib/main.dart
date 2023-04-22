import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  String buttonName = "click";
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("App Title!"),
        ),
        body: Center(
          child: SizedBox(
            width: double.infinity,
             height: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        buttonName = "Clicked";
                      });
                    },
                    child: Text(buttonName)),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        buttonName = "Clicked";
                      });
                    },
                    child: Text(buttonName)),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        buttonName = "Clicked";
                      });
                    },
                    child: Text(buttonName))
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: 'Search', icon: Icon(Icons.search)),
            BottomNavigationBarItem(
                label: 'Report', icon: Icon(Icons.report, color: Colors.red))
          ],
          currentIndex: currentIndex,
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
