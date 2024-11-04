import 'package:flutter/material.dart';
import 'package:unit_6_assignment_simpas/components/tab_widget_1.dart';
import 'package:unit_6_assignment_simpas/components/tab_widget_2.dart';

class About_Me extends StatefulWidget {
  const About_Me({super.key});

  @override
  State<About_Me> createState() => _About_MeState();
}

class _About_MeState extends State<About_Me> {
  @override
  Widget build(BuildContext context) {
    // INSERT CODE HERE!!!!
    // Hint: You need to use the following widgets
    // DefaultTabController, TabBar, Tab and TabBarView
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "About Me",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.lightBlue,
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.info, color: Colors.white), // Icon color
                text: "Info",
              ),
              Tab(
                icon: Icon(Icons.person, color: Colors.white), // Icon color
                text: "Profile",
              ),
            ],
            labelColor: Colors.white, // Text color for selected tab
            unselectedLabelColor: Colors.white, // Text color for unselected tab
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            TabWidget1(),
            TabWidget2(),
          ],
        ),
      ),
    );
  }
}
