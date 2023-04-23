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
          child:currentIndex ==0? Container(
            
          width: double.infinity,
             height: double.infinity,
             color: Colors.deepPurple,
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor : Colors.white,
                    backgroundColor: Colors.green,
                  ),
                    onPressed: () {
                      setState(() {
                        buttonName = "Clicked";
                      });
                    },
                    child: Text(buttonName)),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.red
                  ),
                    onPressed: () {
                      setState(() {
                        buttonName = "Clicked";
                      });
                    },
                    child: Text(buttonName)),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.orange,
                  ),
                    onPressed: () {
                      setState(() {
                        buttonName = "Clicked";
                      });
                    },
                    child: Text(buttonName))
              ],
            ),
          ) : const SizedBox(),
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
